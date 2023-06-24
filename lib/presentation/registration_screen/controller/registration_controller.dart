import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/presentation/registration_screen/models/registration_model.dart';
import 'package:flutter/material.dart';

class RegistrationController extends GetxController {
  TextEditingController group369Controller = TextEditingController();

  TextEditingController group367Controller = TextEditingController();

  TextEditingController languageController = TextEditingController();

  TextEditingController languageOneController = TextEditingController();

  Rx<RegistrationModel> registrationModelObj = RegistrationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group369Controller.dispose();
    group367Controller.dispose();
    languageController.dispose();
    languageOneController.dispose();
  }
}
