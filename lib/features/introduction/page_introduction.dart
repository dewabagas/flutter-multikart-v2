import 'package:flutter/material.dart';

class PageIntroduction extends StatefulWidget {
  @override
  PageIntroductionState createState() => PageIntroductionState();
}

class PageIntroductionState extends State<PageIntroduction> {
  int currentIndexPage = 0;
  int? pageLength;

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
    return Scaffold();
  }
}
