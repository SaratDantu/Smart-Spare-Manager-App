import 'package:flutter/material.dart';
import 'package:smart_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtFillGray600 => BoxDecoration(
        color: ColorConstant.gray600,
      );
  static BoxDecoration get fillTeal100 => BoxDecoration(
        color: ColorConstant.teal100,
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: ColorConstant.blueGray100,
      );
  static BoxDecoration get fillCyan200 => BoxDecoration(
        color: ColorConstant.cyan200,
      );
  static BoxDecoration get fillWhiteA70001 => BoxDecoration(
        color: ColorConstant.whiteA70001,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineIndigo9003f => BoxDecoration();
  static BoxDecoration get fillGreenA700 => BoxDecoration(
        color: ColorConstant.greenA700,
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray80026 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray80026,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              1.48,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray300 => BoxDecoration(
        color: ColorConstant.gray300,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: ColorConstant.gray200,
      );
  static BoxDecoration get fillGray50ed => BoxDecoration(
        color: ColorConstant.gray50Ed,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius circleBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25,
    ),
  );

  static BorderRadius txtRoundedBorder11 = BorderRadius.circular(
    getHorizontalSize(
      11,
    ),
  );

  static BorderRadius roundedBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30,
    ),
  );
}
