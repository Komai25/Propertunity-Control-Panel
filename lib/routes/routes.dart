import 'package:get/get.dart';

import '../admin/admin_screen.dart';
import '../login/login_screen.dart';
import '../property/property_screen.dart';

class Routes {
  static String login = '/';
  static String admin = '/admin';
  static String property = '/property';

  static String getLoginRoute() => login;
  static String getAdminRoute() => admin;
  static String getPropertyRoute() => property;

  static List<GetPage> routes = [
    GetPage(
      name: login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: admin,
      page: () => const AdminScreen(),
    ),
    GetPage(
      name: property,
      page: () => const PropertyScreen(),
    )
  ];
}
