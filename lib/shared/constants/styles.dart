import 'package:flutter/material.dart';
import 'package:flutter_multikart_v2/shared/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

double screenWidth = Get.width;
double screenHeight = Get.height;

class TextStyles {
  static const TextStyle lato =
      TextStyle(fontFamily: "Lato", fontWeight: FontWeight.w500);

  static TextStyle get introTitle => lato.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 16.sp,
      color: ColorConstants.titleColor);

  static TextStyle get introSubtitle => lato.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        color: ColorConstants.contentColor,
      );
}

class Insets {
  static double offsetScale = 1;
  static double get xs => 4.w;
  static double get sm => 8.w;
  static double get med => 12.w;
  static double get lg => 16.w;
  static double get xl => 20.w;
  static double get xxl => 32.w;
  // Offset, used for the edge of the window, or to separate large sections in the app
  static double get offset => 40 * offsetScale;
}

class Sizes {
  static double get xs => 8.w;
  static double get sm => 12.w;
  static double get med => 20.w;
  static double get lg => 32.w;
  static double get xl => 48.w;
  static double get xxl => 80.w;
}
