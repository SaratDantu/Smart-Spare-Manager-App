import '../controller/settings_page_controller.dart';
import 'package:get/get.dart';

class SettingsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsPageController());
  }
}
