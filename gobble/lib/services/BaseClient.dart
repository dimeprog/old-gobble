import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:convert';

import 'package:gobble/services/app_execption.dart';
import 'package:http/http.dart ' as http;

class GobbleBaseClient {
  static const TIMEOUT = 20;
  //  GET
  Future<dynamic> get(String baseUrl, String endPoint) async {
    var uri = Uri.parse(baseUrl + endPoint);
    try {
      var response = await http.get(uri).timeout(
            Duration(seconds: TIMEOUT),
          );
      return _processResponse(response);
    } on SocketException {
      throw FetchDataExecption('No internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondiingExecption(
          'Taking to long to response', uri.toString());
    } catch (err) {
      throw TimeoutExecption(
          ' An error occurred ${err.toString()}', uri.toString());
    }
  }

  // POST
  Future<dynamic> post(String baseUrl, String endPoint, dynamic payload) async {
    var uri = Uri.parse(baseUrl + endPoint);
    var JsonData = json.encode(payload);
    try {
      var response = await http.post(uri, body: JsonData).timeout(
            Duration(seconds: TIMEOUT),
          );
      return _processResponse(response);
    } on SocketException {
      throw FetchDataExecption(
        'No internet connection',
        uri.toString(),
      );
    } on TimeoutException {
      throw ApiNotRespondiingExecption(
        'Taking to long to response',
        uri.toString(),
      );
    } catch (err) {
      print(err.toString());
      throw TimeoutExecption(
        ' An error occurred',
        uri.toString(),
      );
    }
  }

  // DELETE
  // OTHER
  String? _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var resJson = utf8.decode(response.bodyBytes);
        return resJson;
      case 400:
        throw BadRequestExecption(
            utf8.decode(response.bodyBytes), response.request!.url.toString());
      case 401:
      case 402:
      case 403:
      case 404:
        throw UnauthorizedExecption(
            utf8.decode(response.bodyBytes), response.request!.url.toString());
      case 500:
      default:
        throw FetchDataExecption(
            utf8.decode(response.bodyBytes), response.request!.url.toString());
    }
  }
}
