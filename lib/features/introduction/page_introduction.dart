import 'package:flutter/material.dart';
import 'package:flutter_multikart_v2/shared/widgets/buttons/button_primary.dart';
import 'package:get/get.dart';
import 'package:flutter_multikart_v2/shared/shared.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';

class PageIntroduction extends StatefulWidget {
  @override
  PageIntroductionState createState() => PageIntroductionState();
}

class PageIntroductionState extends State<PageIntroduction> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        title: "Introduction",
        child: IntroductionScreen(
          key: introKey,
          showBackButton: false,
          showSkipButton: false,
          showDoneButton: false,
          showNextButton: false,
          controlsPosition: Position(left: 0, right: 0, bottom: 145),
          dotsDecorator: DotsDecorator(
              size: Size.square(4.w),
              activeSize: Size(16.w, 4.w),
              activeColor: ColorConstants.greyLight,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              color: ColorConstants.greyLight,
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.w))),
          pages: [
            PageViewModel(
                title: IntroductionStrings.IntroTitleOne,
                body: IntroductionStrings.IntroSubtitleOne,
                image: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    Introduction.introOne,
                    width: Get.width * 0.7,
                    height: Get.width * 0.7,
                  ),
                ),
                decoration: PageDecoration(
                  bodyTextStyle: TextStyles.introSubtitle,
                  titleTextStyle: TextStyles.introTitle,
                  imageFlex: 9,
                  bodyFlex: 6,
                  bodyPadding: EdgeInsets.zero,
                ),
                footer: BottomComponent()),
            PageViewModel(
                title: IntroductionStrings.IntroTitleTwo,
                body: IntroductionStrings.IntroSubtitleTwo,
                image: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    Introduction.introTwo,
                    width: Get.width * 0.7,
                    height: Get.width * 0.7,
                  ),
                ),
                decoration: PageDecoration(
                  bodyTextStyle: TextStyles.introSubtitle,
                  titleTextStyle: TextStyles.introTitle,
                  imageFlex: 9,
                  bodyFlex: 6,
                  bodyPadding: EdgeInsets.zero,
                ),
                footer: BottomComponent()),
            PageViewModel(
                title: IntroductionStrings.IntroTitleThree,
                body: IntroductionStrings.IntroSubtitleThree,
                image: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    Introduction.introThree,
                    width: Get.width * 0.7,
                    height: Get.width * 0.7,
                  ),
                ),
                decoration: PageDecoration(
                  bodyTextStyle: TextStyles.introSubtitle,
                  titleTextStyle: TextStyles.introTitle,
                  imageFlex: 9,
                  bodyFlex: 6,
                  bodyPadding: EdgeInsets.zero,
                ),
                footer: BottomComponent()),
          ],
        ));
  }
}

class BottomComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children: [
          ButtonPrimary(
            label: "START SHOPPING",
            color: Colors.transparent,
            textColor: Colors.white,
            type: ButtonType.flat,
            buttonSize: ButtonSize.s,
            width: 345.0.w,
            textStyle: TextStyles.button.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white),
            onTap: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account? ',
                style: TextStyles.subtitle2,
              ),
              Text('Sign in', style: TextStyles.subtitle2)
            ],
          )
        ],
      ),
    );
  }
}
