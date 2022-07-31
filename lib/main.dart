import 'package:flutter/material.dart';
import 'package:flutter_multikart_v2/routes/app_pages.dart';
import 'package:flutter_multikart_v2/shared/utils/message_utils.dart';
import 'package:flutter_multikart_v2/themes/themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 734),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,
            getPages: AppPages.routes,
            initialRoute: Routes.SPLASH,
            defaultTransition: Transition.cupertino,
            smartManagement: SmartManagement.keepFactory,
            title: 'Bibit Analog Alarm',
            theme: Themes().lightTheme,
            builder: (BuildContext context, Widget? child) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      dismisKeyboard();
                    },
                    child: child),
              );
            });
      },
    );
  }
}
