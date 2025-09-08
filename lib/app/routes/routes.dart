import 'package:app_getx/app/views/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static String splashScreen = "/splash-screen";
  static List<GetPage> pages = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
  ];
}
