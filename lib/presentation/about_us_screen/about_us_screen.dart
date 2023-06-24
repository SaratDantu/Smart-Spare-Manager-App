import 'controller/about_us_controller.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/widgets/app_bar/appbar_image.dart';
import 'package:smart_app/widgets/app_bar/appbar_title.dart';
import 'package:smart_app/widgets/app_bar/custom_app_bar.dart';

class AboutUsScreen extends GetWidget<AboutUsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray200,
        appBar: CustomAppBar(
          height: getVerticalSize(
            118,
          ),
          leadingWidth: 68,
          leading: AppbarImage(
            height: getSize(
              35,
            ),
            width: getSize(
              35,
            ),
            imagePath: ImageConstant.imgCustomer,
            margin: getMargin(
              left: 33,
              top: 42,
              bottom: 41,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_about_us2".tr,
            margin: getMargin(
              left: 17,
            ),
          ),
          styleType: Style.bgFillCyan200,
        ),
        body: Container(
          width: getHorizontalSize(
            298,
          ),
          margin: getMargin(
            left: 33,
            top: 29,
            right: 43,
            bottom: 46,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_welcome_to_our_smart2".tr,
                  style: TextStyle(
                    color: ColorConstant.black900,
                    fontSize: getFontSize(
                      17,
                    ),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: "msg_with_this_app_you_ll".tr,
                  style: TextStyle(
                    color: ColorConstant.black900,
                    fontSize: getFontSize(
                      17,
                    ),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
