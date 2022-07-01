import 'package:get/get.dart';
import 'package:gobble/screens/details_product_screen.dart';
import 'package:gobble/screens/login_screen.dart';
import 'package:gobble/screens/splash_screen.dart';
import 'package:gobble/screens/welcome_page_screen.dart';

import '../screens/Nav_screen/home_screen.dart';
import '../screens/signup_screen.dart';

class AppRoute {
  //  varaible intializer
  static String Splash = '/splash-screen';
  static String login = '/login-screen';
  static String welcome = '/welcome-screen';
  static String signup = '/signup-screen';
  static String Home = '/home-screen';
  static String Details = '/details-product-screen';

  //  making address
  static String gotoSplashScreen() => Splash;
  static String gotoLoginScreen() => login;
  static String gotoWelcomeScreen() => welcome;
  static String gotoSignupScreen() => signup;
  static String gotoHomeScreen() => Home;
  static String gotoDetailProductScreen() => Details;

  // route pages

  static List<GetPage> routes = [
    GetPage(
      name: Home,
      page: () => HomeScreen(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: Splash,
      page: () => SplashScreen(),
      transitionDuration: const Duration(milliseconds: 5000),
    ),
    GetPage(
      name: login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: welcome,
      page: () => WelcomePageScreen(),
    ),
    GetPage(
      name: signup,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: Details,
      page: () => DetailProductScreen(),
    ),
  ];
}
