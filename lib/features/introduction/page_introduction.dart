import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_multikart_v2/shared/shared.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';

class PageIntroduction extends StatefulWidget {
  @override
  PageIntroductionState createState() => PageIntroductionState();
}

class PageIntroductionState extends State<PageIntroduction> {
  int currentIndexPage = 0;
  int? pageLength;
  final introKey = GlobalKey<IntroductionScreenState>();

  var titles = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.This is simply text ",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.This is simply text  ",
  ];

  @override
  void initState() {
    super.initState();
    currentIndexPage = 0;
    pageLength = 2;
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
          controlsPadding: EdgeInsets.symmetric(vertical: Insets.xxl),
          dotsDecorator: DotsDecorator(
              size: Size.square(8.w),
              activeSize: Size(16.w, 8.w),
              activeColor: ColorConstants.greyLight,
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
                bodyFlex: 5,
                bodyPadding: EdgeInsets.zero,
              ),
              footer: Padding(
                padding: EdgeInsets.symmetric(horizontal: Insets.xxl),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Expanded(
                    //   child: ButtonPrimaryOutline(
                    //     label: "Lewati",
                    //     color: Colors.transparent,
                    //     outlineColor: Colors.white,
                    //     textColor: Colors.white,
                    //     onTap: () {},
                    //   ),
                    // ),
                    // SizedBox(width: Insets.lg),
                    // Expanded(
                    //   child: ButtonPrimaryOutline(
                    //     label: "Lanjutkan",
                    //     color: Colors.white,
                    //     outlineColor: Colors.white,
                    //     onTap: () {
                    //       introKey.currentState!.animateScroll(1);
                    //     },
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class WalkThrough extends StatelessWidget {
  final String textContent;
  final String title;
  final String subtitle;

  WalkThrough(
      {Key? key,
      required this.textContent,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 269.w,
      alignment: Alignment.topCenter,
      child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 28.h),
          child:
              Image(image: AssetImage(textContent), height: screenHeight / 2.5),
        ),
        Column(
          children: [
            Container(
              child: Center(
                  child: Text(
                title,
                style: TextStyles.introTitle,
                textAlign: TextAlign.center,
              )),
            ),
            SizedBox(height: 5.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.w),
              child: Center(
                  child: Text(
                subtitle,
                style: TextStyles.introSubtitle,
                textAlign: TextAlign.center,
              )),
            ),
          ],
        ),
      ]),
    );
  }
}
