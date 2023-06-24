import 'package:flutter/material.dart';
import 'package:smart_app/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      shape: RoundedRectangleBorder(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case ButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      case ButtonPadding.PaddingT7:
        return getPadding(
          left: 7,
          top: 7,
          bottom: 7,
        );
      case ButtonPadding.PaddingT12:
        return getPadding(
          left: 12,
          top: 12,
          bottom: 12,
        );
      default:
        return getPadding(
          all: 5,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillBlack9007c:
        return ColorConstant.black9007c;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillGray300:
        return ColorConstant.gray300;
      default:
        return ColorConstant.cyan200;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.PoppinsBold20:
        return TextStyle(
          color: ColorConstant.black900A3,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsSemiBold20:
        return TextStyle(
          color: ColorConstant.black900Ce,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsSemiBold14:
        return TextStyle(
          color: ColorConstant.black900Ce,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsBold13:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.54,
          ),
        );
      case ButtonFontStyle.PoppinsBold14:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsBold14Bluegray900a5:
        return TextStyle(
          color: ColorConstant.blueGray900A5,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.50,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w800,
          height: getVerticalSize(
            1.53,
          ),
        );
    }
  }
}

enum ButtonPadding {
  PaddingAll5,
  PaddingAll11,
  PaddingAll8,
  PaddingT7,
  PaddingT12,
}

enum ButtonVariant {
  FillBlack9007c,
  FillCyan200,
  FillWhiteA700,
  FillGray300,
}

enum ButtonFontStyle {
  PoppinsExtraBold15WhiteA700,
  PoppinsBold20,
  PoppinsSemiBold20,
  PoppinsSemiBold14,
  PoppinsBold13,
  PoppinsBold14,
  PoppinsBold14Bluegray900a5,
}
