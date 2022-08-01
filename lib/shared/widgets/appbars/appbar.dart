import 'package:flutter/material.dart';
import 'package:flutter_multikart_v2/shared/constants/assets.dart';
import 'package:flutter_multikart_v2/shared/constants/colors.dart';
import 'package:flutter_multikart_v2/shared/constants/styles.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Color? colorTitle;
  final Widget? leadingIcon;
  final Widget? rightComponent;
  final String rightTitle;
  final double? height;
  final bool showIcon;
  final Function()? onBack;

  CustomAppBar({
    Key? key,
    this.leadingIcon,
    this.rightComponent,
    this.title = "",
    this.rightTitle = "SKIP",
    this.colorTitle,
    this.height,
    this.showIcon = true,
    this.onBack,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: height ?? Sizes.toolbarHeight,
      width: double.infinity,
      child: ClipPath(
        clipper: Customclipper(),
        child: Container(
          decoration: BoxDecoration(),
          child: Stack(
            children: [
              showIcon
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                              onTap: onBack ?? () => Get.back(),
                              child: Padding(
                                  padding: EdgeInsets.only(left: 14.w),
                                  child: leadingIcon ??
                                      Image(
                                        image: AssetImage(Assets.iconMultikart),
                                        width: 115.w,
                                      )),
                            )),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 14.w),
                              child: rightComponent ??
                                  Text(
                                    rightTitle,
                                    style: TextStyles.subtitle1.copyWith(
                                      color: colorTitle ??
                                          ColorConstants.titleColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                            ))
                      ],
                    )
                  : SizedBox(),
              Center(
                child: Text(
                  title,
                  style: TextStyles.subtitle1.copyWith(
                    color: colorTitle ?? Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Customclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(size.width, 0.0)
      ..lineTo(size.width, size.height)
      ..quadraticBezierTo(
          size.width - 5, size.height - 20, size.width - 25, size.height - 20)
      ..lineTo(25, size.height - 20)
      ..quadraticBezierTo(5, size.height - 20, 0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
