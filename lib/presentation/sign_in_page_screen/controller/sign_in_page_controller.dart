import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/presentation/sign_in_page_screen/models/sign_in_page_model.dart';
import 'package:flutter/material.dart';

class SignInPageController extends GetxController {
  TextEditingController group362Controller = TextEditingController();

  TextEditingController languageController = TextEditingController();

  Rx<SignInPageModel> signInPageModelObj = SignInPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group362Controller.dispose();
    languageController.dispose();
  }
}
