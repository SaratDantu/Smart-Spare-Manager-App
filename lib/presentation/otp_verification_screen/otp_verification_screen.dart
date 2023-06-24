import 'controller/otp_verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/widgets/custom_button.dart';
import 'package:smart_app/widgets/custom_text_form_field.dart';

class OtpVerificationScreen extends GetWidget<OtpVerificationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray200,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 45, right: 45),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(243),
                              margin: getMargin(left: 16, right: 25),
                              child: Text("msg_enter_the_otp_sent".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsBold14))),
                      CustomImageView(
                          imagePath: ImageConstant.imgPassword,
                          height: getVerticalSize(212),
                          width: getHorizontalSize(215),
                          margin: getMargin(top: 30)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.languageOneController,
                          hintText: "lbl_enter_otp".tr,
                          margin: getMargin(left: 11, top: 57),
                          padding: TextFormFieldPadding.PaddingAll12,
                          fontStyle: TextFormFieldFontStyle.PoppinsBold14,
                          textInputAction: TextInputAction.done),
                      CustomButton(
                          height: getVerticalSize(41),
                          width: getHorizontalSize(151),
                          text: "lbl_submit".tr,
                          margin: getMargin(top: 36, bottom: 5),
                          padding: ButtonPadding.PaddingAll8,
                          fontStyle: ButtonFontStyle.PoppinsSemiBold14,
                          onTap: onTapSubmit)
                    ]))));
  }

  onTapSubmit() {
    Get.toNamed(AppRoutes.successfulVerificationScreen);
  }
}
