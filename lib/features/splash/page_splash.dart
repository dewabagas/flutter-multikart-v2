import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_multikart_v2/routes/app_pages.dart';
import 'package:flutter_multikart_v2/shared/constants/constants.dart';
import 'package:get/instance_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageSplash extends StatefulWidget {
  @override
  PageSplashState createState() => PageSplashState();
}

class PageSplashState extends State<PageSplash> with TickerProviderStateMixin {
  late AnimationController _controllerAnimation;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    _controllerAnimation = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this, value: 0.1);

    _animation = CurvedAnimation(
        parent: _controllerAnimation, curve: Curves.bounceInOut);

    _controllerAnimation.forward();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  dispose() {
    _controllerAnimation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () async {
      Get.offAllNamed(Routes.PAGE_INTRODUCTION);
    });
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: _animation,
            alignment: Alignment.center,
            child:
                Image.asset(Assets.iconMultikart, width: 318.w, height: 326.h),
          ),
          SizedBox(height: 10.h),
          Text(
            'Multikart',
            style: TextStyles.introTitle,
          ),
        ],
      ),
    );
  }
}
