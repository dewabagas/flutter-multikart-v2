import 'package:flutter/material.dart';
import 'package:flutter_multikart_v2/shared/constants/styles.dart';
import 'package:flutter_multikart_v2/shared/widgets/appbars/appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class PageDecorationTop extends StatelessWidget {
  final Widget child;
  final String title;
  final Widget? bottomBar;
  final double? bottomBarHeight;
  final bool enableBack;
  final Color? toolbarTitleColor;
  final double padding;
  final Widget? iconBack;
  final Color? backgroundColor;
  final Function()? onBackPressed;
  final double? toolbarHeight;
  final Widget? appBar;

  const PageDecorationTop({
    Key? key,
    required this.child,
    required this.title,
    this.bottomBar,
    this.bottomBarHeight,
    this.enableBack = true,
    this.toolbarTitleColor,
    this.padding = 20,
    this.iconBack,
    this.backgroundColor,
    this.onBackPressed,
    this.toolbarHeight,
    this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      body: Stack(
        children: [
          appBar ?? CustomAppBar(),
          Padding(
              padding: EdgeInsets.fromLTRB(
                padding,
                toolbarHeight ?? Sizes.toolbarHeight - 19.w,
                padding,
                padding,
              ),
              child: child)
        ],
      ),
      bottomNavigationBar: bottomBar != null
          ? SizedBox(
              width: Get.width,
              height: bottomBarHeight ?? Sizes.xxl,
              child: bottomBar,
            )
          : SizedBox(),
    );
  }
}
