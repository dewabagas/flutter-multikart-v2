import 'package:flutter/material.dart';
import 'package:flutter_multikart_v2/shared/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

double screenWidth = Get.width;
double screenHeight = Get.height;

enum ButtonAlign { center, spaceBetween }

enum ButtonType { flat, elips, rounded }

enum ButtonSize { l, m, s, xs, xxs }

enum ButtonColor { color, gradient }

enum TextFieldState { focus, error, disabled, none }

enum InputStyle { box, line, outline }

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

  static TextStyle get subtitle1 => lato.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: FontSizes.s16,
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
  static double get toolbarHeight => 119.w;
}

class IconSizes {
  static double get sm => 16.w;
  static double get med => 24.w;
  static double get lg => 32.w;
  static double get xl => 48.w;
  static double get xxl => 60.w;
}

class FontSizes {
  /// Provides the ability to nudge the app-wide font scale in either direction
  static double get s9 => 9.w;
  static double get s10 => 10.w;
  static double get s11 => 11.w;
  static double get s12 => 12.w;
  static double get s14 => 14.w;
  static double get s16 => 16.w;
  static double get s18 => 18.w;
  static double get s20 => 20.w;
  static double get s24 => 24.w;
  static double get s26 => 26.w;
  static double get s32 => 32.w;
  static double get s36 => 36.w;
  static double get s40 => 40.w;
  static double get s48 => 48.w;
  static double get s56 => 56.w;
}
