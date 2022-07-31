import 'package:flutter_multikart_v2/features/introduction/page_introduction.dart';
import 'package:flutter_multikart_v2/features/splash/page_splash.dart';
import 'package:get/route_manager.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => PageSplash()),
    GetPage(name: Routes.PAGE_INTRODUCTION, page: () => PageIntroduction())
  ];
}
