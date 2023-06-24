import '../controller/successful_verification_controller.dart';
import 'package:get/get.dart';

class SuccessfulVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessfulVerificationController());
  }
}
