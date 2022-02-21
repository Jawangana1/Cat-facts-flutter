import 'package:cat_facts/presentation/android_large_1_screen/android_large_1_screen.dart';
import 'package:cat_facts/presentation/android_large_1_screen/binding/android_large_1_binding.dart';
import 'package:cat_facts/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:cat_facts/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:cat_facts/presentation/android_large_1_screen/android_large_1_screen.dart';
import 'package:cat_facts/presentation/android_large_1_screen/binding/android_large_1_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String androidLarge1Screen = '/android_large_1_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: androidLarge1Screen,
      page: () => AndroidLarge1Screen(),
      bindings: [
        AndroidLarge1Binding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => AndroidLarge1Screen(),
      bindings: [
        AndroidLarge1Binding(),
      ],
    )
  ];
}
