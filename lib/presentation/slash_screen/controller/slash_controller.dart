import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/presentation/slash_screen/models/slash_model.dart';

class SlashController extends GetxController {
  Rx<SlashModel> slashModelObj = SlashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.registrationScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
