import 'package:get/get.dart';
import 'APILOGIN.dart';
import 'APIRegister.dart';
import 'Screen2.dart';
import 'app_routes.dart';

class AppPage{
  AppPage._();

  static const INITIAL = Routes.SCREEN;

  static final routes = [
    GetPage(
        name: '/screen',
        page: () =>Screen2(),
    ),
    GetPage(
      name: '/apilogin',
      page: () =>ApiLogin(),
    ),
    GetPage(
      name: '/apiregister',
      page: () =>ApIRegister(),
    ),
  ];
}