import 'package:get/get.dart';
import 'package:mbs/view/screens/admin/home/home_screen.dart';
import 'package:mbs/view/screens/admin/navigation/bottom_navigation_widget.dart';
import 'package:mbs/view/screens/auth/widgets/signinscreen.dart';
import 'package:mbs/view/screens/auth/widgets/signupscreen.dart';
import 'package:mbs/view/screens/client/navigation/client_bottom_tabs.dart';

import 'package:mbs/view/screens/splash/splashscreen.dart';
import 'package:mbs/view/screens/welcome/welcome_screen.dart';

class RouteHelper {
  static const String initial = '/';
  static const String splash = '/splash';
  static const String auth = '/auth';
  static const String register = '/register';
  static const String bottomnavigation = '/bottomnavigation';
  static const String home = '/home';
  static const String welcome = '/welcome';
  static const String clientbottomtabs = '/welcome';

  static getInitialRoute() => initial;
  static getSplashRoute() => splash;
  static getAuthRoute(String name) => '$auth?name=$name';
  static getRegisterRoute(String name) => '$register?name=$name';
  static getBottomnavigationRoute(String name) =>
      '$bottomnavigation?name=$name';
  static getHomeRoute(String name) => '$home?name=$name';
  static getWelcomeRoute(String name) => '$welcome?name=$name';

  //admin

  //client
  static getClientBottomtabsRoute(String name) => '$clientbottomtabs?name=$name';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const SplashScreen()),
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(
      name: auth,
      page: () => const SignInScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: register,
      page: () => const SignUpScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: bottomnavigation,
      page: () => const BottomNavigationWidget(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: home,
      page: () => const HomeScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: welcome,
      page: () => const WelcomeScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: clientbottomtabs,
      page: () => const ClientBottomTabs(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
  ];
}
