import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String img, double? scale}) {
    return Image.asset(
      "assets/images/$img",
      scale: scale,
    );
  }

  static CustomText(
      {required String text,
      required Color color,
      required FontWeight fontweight,
      String? fontfamily,
      required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          fontFamily: fontfamily ?? 'regular',
          fontWeight: fontweight,
          color: color),
    );
  }
}
