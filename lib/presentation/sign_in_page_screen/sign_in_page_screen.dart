import 'controller/sign_in_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/core/utils/validation_functions.dart';
import 'package:smart_app/widgets/custom_button.dart';
import 'package:smart_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInPageScreen extends GetWidget<SignInPageController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray200,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 24, right: 24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: getPadding(top: 48),
                              child: Text("lbl_welcome_back".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold23)),
                          Container(
                              width: getHorizontalSize(195),
                              margin: getMargin(top: 13),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_s".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(11),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700)),
                                    TextSpan(
                                        text: "msg_implify_spare_parts".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900Ad,
                                            fontSize: getFontSize(11),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700))
                                  ]),
                                  textAlign: TextAlign.center)),
                          CustomImageView(
                              svgPath:
                                  ImageConstant.imgUndrawaccessaccountre8spm,
                              height: getVerticalSize(164),
                              width: getHorizontalSize(163),
                              margin: getMargin(top: 38)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.group362Controller,
                              hintText: "msg_enter_mail_id".tr,
                              margin: getMargin(top: 49),
                              textInputType: TextInputType.phone,
                              validator: (value) {
                                if (!isValidPhone(value)) {
                                  return "Please enter valid phone number";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.languageController,
                              hintText: "msg_enter_password".tr,
                              margin: getMargin(top: 25),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: true),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 93, top: 25),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold14))),
                          CustomButton(
                              height: getVerticalSize(54),
                              text: "lbl_sign_in".tr,
                              margin: getMargin(left: 6, top: 18, right: 5),
                              padding: ButtonPadding.PaddingAll11,
                              fontStyle: ButtonFontStyle.PoppinsSemiBold20,
                              onTap: onTapSignin),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtDonthaveanaccount();
                                  },
                                  child: Padding(
                                      padding: getPadding(left: 36, top: 20),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "msg_don_t_have_an_account2"
                                                        .tr,
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .black900B7,
                                                    fontSize: getFontSize(15),
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w700)),
                                            TextSpan(
                                                text: " ",
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: getFontSize(15),
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w700)),
                                            TextSpan(
                                                text: "lbl_sign_up".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.teal900,
                                                    fontSize: getFontSize(15),
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w700))
                                          ]),
                                          textAlign: TextAlign.left))))
                        ])))));
  }

  onTapSignin() {
    Get.toNamed(AppRoutes.homePageScreen);
  }

  onTapTxtDonthaveanaccount() {
    Get.toNamed(AppRoutes.registrationScreen);
  }
}
