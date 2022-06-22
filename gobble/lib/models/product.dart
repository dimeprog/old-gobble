// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    this.info,
    this.item,
  });

  Info? info;
  List<ProductItem>? item;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        info: Info.fromJson(json["info"]),
        item: List<ProductItem>.from(
            json["item"].map((x) => ProductItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "info": info?.toJson(),
        "item": List<dynamic>.from(item!.map((x) => x.toJson())),
      };
}

class Info {
  Info({
    this.postmanId,
    this.name,
    this.schema,
  });

  String? postmanId;
  String? name;
  String? schema;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        postmanId: json["_postman_id"],
        name: json["name"],
        schema: json["schema"],
      );

  Map<String, dynamic> toJson() => {
        "_postman_id": postmanId,
        "name": name,
        "schema": schema,
      };
}

class ProductItem {
  ProductItem({
    this.name,
    this.item,
    this.id,
    this.protocolProfileBehavior,
    this.request,
    this.response,
  });

  String? name;
  List<PurpleItem>? item;
  String? id;
  ProtocolProfileBehavior? protocolProfileBehavior;
  PurpleRequest? request;
  List<dynamic>? response;

  factory ProductItem.fromJson(Map<String, dynamic> json) => ProductItem(
        name: json["name"],
        item: json["item"] == null
            ? null
            : List<PurpleItem>.from(
                json["item"].map((x) => PurpleItem.fromJson(x))),
        id: json["id"],
        protocolProfileBehavior: json["protocolProfileBehavior"] == null
            ? null
            : ProtocolProfileBehavior.fromJson(json["protocolProfileBehavior"]),
        request: json["request"] == null
            ? null
            : PurpleRequest.fromJson(json["request"]),
        response: json["response"] == null
            ? null
            : List<dynamic>.from(json["response"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "item": item == null
            ? null
            : List<dynamic>.from(item!.map((x) => x.toJson())),
        "id": id,
        "protocolProfileBehavior": protocolProfileBehavior == null
            ? null
            : protocolProfileBehavior?.toJson(),
        "request": request == null ? null : request?.toJson(),
        "response": response == null
            ? null
            : List<dynamic>.from(response!.map((x) => x)),
      };
}

class PurpleItem {
  PurpleItem({
    this.name,
    this.id,
    this.request,
    this.response,
    this.item,
    this.event,
    this.protocolProfileBehavior,
  });

  String? name;
  String? id;
  FluffyRequest? request;
  List<dynamic>? response;
  List<FluffyItem>? item;
  List<Event>? event;
  ProtocolProfileBehavior? protocolProfileBehavior;

  factory PurpleItem.fromJson(Map<String, dynamic> json) => PurpleItem(
        name: json["name"],
        id: json["id"],
        request: json["request"] == null
            ? null
            : FluffyRequest.fromJson(json["request"]),
        response: json["response"] == null
            ? null
            : List<dynamic>.from(json["response"].map((x) => x)),
        item: json["item"] == null
            ? null
            : List<FluffyItem>.from(
                json["item"].map((x) => FluffyItem.fromJson(x))),
        event: json["event"] == null
            ? null
            : List<Event>.from(json["event"].map((x) => Event.fromJson(x))),
        protocolProfileBehavior: json["protocolProfileBehavior"] == null
            ? null
            : ProtocolProfileBehavior.fromJson(json["protocolProfileBehavior"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "request": request == null ? null : request?.toJson(),
        "response": response == null
            ? null
            : List<dynamic>.from(response!.map((x) => x)),
        "item": item == null
            ? null
            : List<dynamic>.from(item!.map((x) => x.toJson())),
        "event": event == null
            ? null
            : List<dynamic>.from(event!.map((x) => x.toJson())),
        "protocolProfileBehavior": protocolProfileBehavior == null
            ? null
            : protocolProfileBehavior?.toJson(),
      };
}

class Event {
  Event({
    this.listen,
    this.script,
  });

  String? listen;
  Script? script;

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        listen: json["listen"],
        script: Script.fromJson(json["script"]),
      );

  Map<String, dynamic> toJson() => {
        "listen": listen,
        "script": script?.toJson(),
      };
}

class Script {
  Script({
    this.type,
    this.exec,
  });

  String? type;
  List<String>? exec;

  factory Script.fromJson(Map<String, dynamic> json) => Script(
        type: json["type"],
        exec: List<String>.from(json["exec"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "exec": List<dynamic>.from(exec!.map((x) => x)),
      };
}

class FluffyItem {
  FluffyItem({
    this.name,
    this.event,
    this.id,
    this.request,
    this.response,
  });

  String? name;
  List<Event>? event;
  String? id;
  PurpleRequest? request;
  List<dynamic>? response;

  factory FluffyItem.fromJson(Map<String, dynamic> json) => FluffyItem(
        name: json["name"],
        event: json["event"] == null
            ? null
            : List<Event>.from(json["event"].map((x) => Event.fromJson(x))),
        id: json["id"],
        request: PurpleRequest.fromJson(json["request"]),
        response: List<dynamic>.from(json["response"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "event": event == null
            ? null
            : List<dynamic>.from(event!.map((x) => x.toJson())),
        "id": id,
        "request": request?.toJson(),
        "response": List<dynamic>.from(response!.map((x) => x)),
      };
}

class PurpleRequest {
  PurpleRequest({
    this.method,
    this.header,
    this.body,
    this.url,
    this.auth,
  });

  Method? method;
  List<dynamic>? header;
  Body? body;
  String? url;
  Auth? auth;

  factory PurpleRequest.fromJson(Map<String, dynamic> json) => PurpleRequest(
        method: methodValues.map![json["method"]],
        header: List<dynamic>.from(json["header"].map((x) => x)),
        body: json["body"] == null ? null : Body.fromJson(json["body"]),
        url: json["url"] == null ? null : json["url"],
        auth: json["auth"] == null ? null : Auth.fromJson(json["auth"]),
      );

  Map<String, dynamic> toJson() => {
        "method": methodValues.reverse[method],
        "header": List<dynamic>.from(header!.map((x) => x)),
        "body": body == null ? null : body?.toJson(),
        "url": url == null ? null : url,
        "auth": auth == null ? null : auth?.toJson(),
      };
}

class Auth {
  Auth({
    this.type,
    this.bearer,
  });

  String? type;
  Bearer? bearer;

  factory Auth.fromJson(Map<String, dynamic> json) => Auth(
        type: json["type"],
        bearer: Bearer.fromJson(json["bearer"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "bearer": bearer?.toJson(),
      };
}

class Bearer {
  Bearer({
    this.token,
  });

  String? token;

  factory Bearer.fromJson(Map<String, dynamic> json) => Bearer(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}

class Body {
  Body({
    this.mode,
    this.raw,
    this.options,
    this.formdata,
  });

  String? mode;
  String? raw;
  Options? options;
  List<Formdatum>? formdata;

  factory Body.fromJson(Map<String, dynamic> json) => Body(
        mode: json["mode"],
        raw: json["raw"] == null ? null : json["raw"],
        options:
            json["options"] == null ? null : Options.fromJson(json["options"]),
        formdata: json["formdata"] == null
            ? null
            : List<Formdatum>.from(
                json["formdata"].map((x) => Formdatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "mode": mode,
        "raw": raw == null ? null : raw,
        "options": options == null ? null : options?.toJson(),
        "formdata": formdata == null
            ? null
            : List<dynamic>.from(formdata!.map((x) => x.toJson())),
      };
}

class Formdatum {
  Formdatum({
    this.key,
    this.type,
    this.src,
  });

  String? key;
  String? type;
  String? src;

  factory Formdatum.fromJson(Map<String, dynamic> json) => Formdatum(
        key: json["key"],
        type: json["type"],
        src: json["src"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "type": type,
        "src": src,
      };
}

class Options {
  Options({
    this.raw,
  });

  Raw? raw;

  factory Options.fromJson(Map<String, dynamic> json) => Options(
        raw: Raw.fromJson(json["raw"]),
      );

  Map<String, dynamic> toJson() => {
        "raw": raw?.toJson(),
      };
}

class Raw {
  Raw({
    this.language,
  });

  String? language;

  factory Raw.fromJson(Map<String, dynamic> json) => Raw(
        language: json["language"],
      );

  Map<String, dynamic> toJson() => {
        "language": language,
      };
}

enum Method { POST, GET, PATCH, DELETE }

final methodValues = EnumValues({
  "DELETE": Method.DELETE,
  "GET": Method.GET,
  "PATCH": Method.PATCH,
  "POST": Method.POST
});

class ProtocolProfileBehavior {
  ProtocolProfileBehavior({
    this.disableBodyPruning,
  });

  bool? disableBodyPruning;

  factory ProtocolProfileBehavior.fromJson(Map<String, dynamic> json) =>
      ProtocolProfileBehavior(
        disableBodyPruning: json["disableBodyPruning"],
      );

  Map<String, dynamic> toJson() => {
        "disableBodyPruning": disableBodyPruning,
      };
}

class FluffyRequest {
  FluffyRequest({
    this.auth,
    this.method,
    this.header,
    this.body,
    this.url,
  });

  Auth? auth;
  Method? method;
  List<dynamic>? header;
  Body? body;
  dynamic? url;

  factory FluffyRequest.fromJson(Map<String, dynamic> json) => FluffyRequest(
        auth: json["auth"] == null ? null : Auth.fromJson(json["auth"]),
        method: methodValues.map![json["method"]],
        header: List<dynamic>.from(json["header"].map((x) => x)),
        body: json["body"] == null ? null : Body.fromJson(json["body"]),
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "auth": auth == null ? null : auth?.toJson(),
        "method": methodValues.reverse[method],
        "header": List<dynamic>.from(header!.map((x) => x)),
        "body": body == null ? null : body?.toJson(),
        "url": url,
      };
}

class UrlClass {
  UrlClass({
    this.raw,
    this.host,
    this.path,
    this.query,
  });

  String? raw;
  List<String>? host;
  List<String>? path;
  List<Query>? query;

  factory UrlClass.fromJson(Map<String, dynamic> json) => UrlClass(
        raw: json["raw"],
        host: List<String>.from(json["host"].map((x) => x)),
        path: List<String>.from(json["path"].map((x) => x)),
        query: List<Query>.from(json["query"].map((x) => Query.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "raw": raw,
        "host": List<dynamic>.from(host!.map((x) => x)),
        "path": List<dynamic>.from(path!.map((x) => x)),
        "query": List<dynamic>.from(query!.map((x) => x.toJson())),
      };
}

class Query {
  Query({
    this.key,
    this.value,
  });

  String? key;
  String? value;

  factory Query.fromJson(Map<String, dynamic> json) => Query(
        key: json["key"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "value": value,
      };
}

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
