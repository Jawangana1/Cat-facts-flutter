import 'package:flutter/material.dart';
import 'package:cat_facts/core/app_export.dart';

class AppStyle {
  static TextStyle textStyleregular20 = TextStyle(
    color: ColorConstant.black_900,
    fontSize: getFontSize(
      20,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyleGeneralSansmedium20 = TextStyle(
    color: ColorConstant.white_A700,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'General Sans',
    fontWeight: FontWeight.w500,
  );

  static TextStyle textStyleRobotoregular14 = textStyleRobotoregular24.copyWith(
    fontSize: getFontSize(
      14,
    ),
  );

  static TextStyle textStyleRobotoregular24 = TextStyle(
    color: ColorConstant.black_900,
    fontSize: getFontSize(
      24,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyleregular16 = TextStyle(
    color: ColorConstant.bluegray_400,
    fontSize: getFontSize(
      16,
    ),
    fontWeight: FontWeight.w400,
  );
}
