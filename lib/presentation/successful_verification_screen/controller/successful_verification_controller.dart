import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/presentation/successful_verification_screen/models/successful_verification_model.dart';

class SuccessfulVerificationController extends GetxController {
  Rx<SuccessfulVerificationModel> successfulVerificationModelObj =
      SuccessfulVerificationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
