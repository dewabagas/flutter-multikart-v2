import 'package:flutter/material.dart';
import 'package:flutter_multikart_v2/shared/constants/colors.dart';
import 'package:flutter_multikart_v2/shared/constants/styles.dart';
import 'package:flutter_multikart_v2/shared/widgets/others/loading_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ButtonPrimaryOutlined extends StatefulWidget {
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

  const ButtonPrimaryOutlined({
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
    this.disabledColor = ColorConstants.disableColor,
    this.loadingColor,
    this.textStyle,
  }) : super(key: key);

  @override
  State<ButtonPrimaryOutlined> createState() => _ButtonPrimaryOutlinedState();
}

class _ButtonPrimaryOutlinedState extends State<ButtonPrimaryOutlined> {
  _align() {
    switch (widget.align) {
      case ButtonAlign.spaceBetween:
        return MainAxisAlignment.spaceBetween;
      case ButtonAlign.center:
        return MainAxisAlignment.center;
      default:
        return MainAxisAlignment.center;
    }
  }

  RoundedRectangleBorder _shape() {
    switch (widget.type) {
      case ButtonType.flat:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        );
      case ButtonType.elips:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.w),
        );
      case ButtonType.rounded:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        );

      default:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        );
    }
  }

  double _radius() {
    switch (widget.type) {
      case ButtonType.flat:
        return 5.0;
      case ButtonType.elips:
        return 28.w;
      case ButtonType.rounded:
        return 8.w;
      default:
        return 0.0;
    }
  }

  double _size() {
    switch (widget.buttonSize) {
      case ButtonSize.l:
        return 56.h;
      case ButtonSize.m:
        return 48.h;
      case ButtonSize.s:
        return 44.h;
      case ButtonSize.xs:
        return 32.h;
      default:
        return 56.w;
    }
  }

  BoxDecoration _decoration() {
    switch (widget.buttonColor) {
      case ButtonColor.color:
        return BoxDecoration(
          color: widget.enable
              ? widget.color ?? Theme.of(context).primaryColor
              : widget.disabledColor,
          borderRadius: BorderRadius.circular(_radius()),
        );
      case ButtonColor.gradient:
        return BoxDecoration(
          gradient:
              widget.enable ? widget.gradient : Gradients.gradientDisabled,
          borderRadius: BorderRadius.circular(_radius()),
        );

      default:
        return BoxDecoration(
          color: widget.enable
              ? widget.color ?? Theme.of(context).primaryColor
              : ColorConstants.disableColor,
          borderRadius: BorderRadius.circular(_radius()),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: widget.margin ?? EdgeInsets.symmetric(vertical: Insets.sm),
        width: widget.width ?? Get.width,
        padding: EdgeInsets.all(4),
        height: _size(),
        child: widget.isLoading
            ? widget.loadingIndicator ??
                loadingIndicator(
                  color: widget.loadingColor ?? Theme.of(context).primaryColor,
                )
            : Material(
                elevation: widget.elevation,
                shape: _shape(),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shadowColor: Colors.grey.shade500,
                child: InkWell(
                  child: Ink(
                    decoration: _decoration(),
                    child: Padding(
                      padding: widget.padding ??
                          EdgeInsets.symmetric(horizontal: Insets.med),
                      child: Row(
                        mainAxisAlignment: _align(),
                        children: [
                          if (widget.prefixIcon != null) widget.prefixIcon!,
                          Text(
                            widget.label,
                            style: widget.textStyle ??
                                TextStyles.button.copyWith(
                                    fontSize: 16.sp,
                                    color: widget.enable
                                        ? widget.textColor
                                        : ColorConstants.disableColor,
                                    fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                          if (widget.suffixIcon != null) widget.suffixIcon!,
                        ],
                      ),
                    ),
                  ),
                  onTap: widget.enable ? widget.onTap ?? () {} : null,
                ),
              ));
  }
}
