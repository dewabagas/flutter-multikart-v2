
import 'package:flutter/cupertino.dart';
import 'package:flutter_multikart_v2/shared/constants/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget loadingIndicator({ Color? color }) {
  return SizedBox(
    height: Sizes.lg,
    child: Center(
      child: SpinKitRing(
        color: color ?? ColorConstants.primaryColor,
        size: Sizes.lg,
        lineWidth: Strokes.thick,
      ),
    ),
  );
}