import 'package:flutter/material.dart';
import 'package:flutter_multikart_v2/shared/constants/colors.dart';
import 'package:flutter_multikart_v2/shared/constants/styles.dart';

class ButtonPrimary extends StatefulWidget {
  final Function()? onTap;
  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? color;
  final Color textColor;
  final double borderRadius;
  final ButtonAlign align;
  final ButtonType type;
  final double elevation;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final ButtonSize buttonSize;
  final ButtonColor buttonColor;
  final bool enable;
  final LinearGradient gradient;
  final double? width;
  final Widget? loadingIndicator;
  final bool isLoading;
  final Color? disabledColor;
  final Color? loadingColor;
  final TextStyle? textStyle;

  const ButtonPrimary({
    Key? key,
    this.onTap,
    this.label = 'Button',
    this.prefixIcon,
    this.suffixIcon,
    this.color,
    this.textColor = Colors.white,
    this.borderRadius = 0.0,
    this.align = ButtonAlign.center,
    this.type = ButtonType.elips,
    this.elevation = 0.0,
    this.margin,
    this.padding,
    this.buttonSize = ButtonSize.m,
    this.enable = true,
    this.gradient = Gradients.gradientPrimaryTop,
    this.buttonColor = ButtonColor.gradient,
    this.width,
    this.loadingIndicator,
    this.isLoading = false,
    this.disabledColor = AppColor.disableColor,
    this.loadingColor,
    this.textStyle,
  }) : super(key: key);
}
