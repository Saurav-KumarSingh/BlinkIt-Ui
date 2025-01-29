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
  static CustomTextField({required TextEditingController controller}){
    return Container(
      height: 37,
      width: 345,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search 'ice-cream'",
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.mic,color: Colors.black,),
          border: InputBorder.none

        ),
      ),
    );
  }
}
