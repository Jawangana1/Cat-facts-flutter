import 'package:flutter/material.dart';
import 'package:cat_facts/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get groupStyledeep_purple_A200cornerRadius =>
      BoxDecoration(
        color: ColorConstant.deep_purple_A200,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            12,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.deep_purple_A200_66,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get textStyleRobotoregular14 => BoxDecoration(
        color: ColorConstant.white_A700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            50,
          ),
        ),
      );
  static BoxDecoration get groupStylewhite_A700 => BoxDecoration(
        color: ColorConstant.white_A700,
      );
}
