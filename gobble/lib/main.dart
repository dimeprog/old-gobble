import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gobble/bingings/auth_binding.dart';
import 'package:gobble/route/route.dart';
import 'package:gobble/screens/login_screen.dart';
import 'package:gobble/utils/theme.dart';
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
      // initialBinding: AllBindings(),
      debugShowCheckedModeBanner: false,
      title: 'Gobble',
      theme: AppTheme.LightTheme(),
      initialRoute: AppRoute.gotoWelcomeScreen(),
      getPages: AppRoute.routes,
    );
  }
}
