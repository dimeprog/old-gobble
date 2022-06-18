import 'package:get/get.dart';
import 'package:gobble/screens/splash_screen.dart';

class AppRoute {
  //  varaible intializer
  static String Splash = '/splash-screen';

  //  making address
  static String gotoSplashScreen() => Splash;

  static List<GetPage> routes = [
    GetPage(
      name: Splash,
      page: () => SplashScreen(),
    ),
  ];
}
