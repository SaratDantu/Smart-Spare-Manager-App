import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/presentation/otp_verification_screen/models/otp_verification_model.dart';
import 'package:flutter/material.dart';

class OtpVerificationController extends GetxController {
  TextEditingController languageOneController = TextEditingController();

  Rx<OtpVerificationModel> otpVerificationModelObj = OtpVerificationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageOneController.dispose();
  }
}
