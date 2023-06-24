import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/presentation/settings_page_screen/models/settings_page_model.dart';

class SettingsPageController extends GetxController {
  Rx<SettingsPageModel> settingsPageModelObj = SettingsPageModel().obs;

  RxBool isSelectedSwitch = false.obs;

  RxBool isSelectedSwitch1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
