import 'controller/registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/core/utils/validation_functions.dart';
import 'package:smart_app/widgets/custom_button.dart';
import 'package:smart_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistrationScreen extends GetWidget<RegistrationController> {
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
                    padding: getPadding(left: 23, right: 23),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("msg_welcome_on_board".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold20Black900),
                          Container(
                              width: getHorizontalSize(195),
                              margin: getMargin(top: 19),
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
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.group369Controller,
                              hintText: "msg_enter_company_s".tr,
                              margin: getMargin(top: 22),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.group367Controller,
                              hintText: "msg_enter_mail_id".tr,
                              margin: getMargin(top: 37),
                              padding: TextFormFieldPadding.PaddingAll12,
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
                              margin: getMargin(top: 37),
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
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.languageOneController,
                              hintText: "msg_confirm_password".tr,
                              margin: getMargin(top: 38),
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
                          CustomButton(
                              height: getVerticalSize(54),
                              text: "lbl_register".tr,
                              margin: getMargin(left: 7, top: 41, right: 6),
                              padding: ButtonPadding.PaddingAll11,
                              fontStyle: ButtonFontStyle.PoppinsSemiBold20,
                              onTap: onTapRegister),
                          GestureDetector(
                              onTap: () {
                                onTapTxtAlreadyhavean();
                              },
                              child: Padding(
                                  padding: getPadding(top: 30, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_already_have_an2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.black900B7,
                                                fontSize: getFontSize(15),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700)),
                                        TextSpan(
                                            text: " ",
                                            style: TextStyle(
                                                color: ColorConstant.black900,
                                                fontSize: getFontSize(15),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700)),
                                        TextSpan(
                                            text: "lbl_sign_in".tr,
                                            style: TextStyle(
                                                color: ColorConstant.teal900,
                                                fontSize: getFontSize(15),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700))
                                      ]),
                                      textAlign: TextAlign.left)))
                        ])))));
  }

  onTapRegister() {
    Get.toNamed(AppRoutes.otpVerificationScreen);
  }

  onTapTxtAlreadyhavean() {
    Get.toNamed(AppRoutes.signInPageScreen);
  }
}
