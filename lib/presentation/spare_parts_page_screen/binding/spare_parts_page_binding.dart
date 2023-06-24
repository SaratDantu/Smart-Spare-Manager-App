import '../controller/spare_parts_page_controller.dart';
import 'package:get/get.dart';

class SparePartsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SparePartsPageController());
  }
}
