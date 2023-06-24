import 'controller/successful_verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/widgets/custom_button.dart';

class SuccessfulVerificationScreen
    extends GetWidget<SuccessfulVerificationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 53, right: 53),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("msg_thank_you_for_registering".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14),
                      CustomImageView(
                          svgPath: ImageConstant.imgVector,
                          height: getVerticalSize(207),
                          width: getHorizontalSize(220),
                          margin: getMargin(top: 33)),
                      Container(
                          width: getHorizontalSize(266),
                          margin: getMargin(top: 67),
                          child: Text("msg_log_in_to_access".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsBold11Black900c6)),
                      CustomButton(
                          height: getVerticalSize(32),
                          width: getHorizontalSize(151),
                          text: "lbl_log_in".tr,
                          margin: getMargin(top: 43, bottom: 5),
                          fontStyle: ButtonFontStyle.PoppinsSemiBold14,
                          onTap: onTapLogin)
                    ]))));
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.signInPageScreen);
  }
}
