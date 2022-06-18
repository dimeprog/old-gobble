import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gobble/route/route.dart';
import 'package:gobble/screens/login_screen.dart';
import './screens/splash_screen.dart';
import './route/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoute.gotoSplashScreen(),
      getPages: AppRoute.routes,
    );
  }
}
