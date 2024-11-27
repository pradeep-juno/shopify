// lib/core/router/app_router.dart
import 'package:get/get.dart';
import 'package:shopping_cart/screens/Desktop/homescreen.dart';

class AppRouter {
  static const String HOMESCREEN = '/home';

  static final routes = [
    GetPage(name: HOMESCREEN, page: () => HomeScreen()),
  ];
}
