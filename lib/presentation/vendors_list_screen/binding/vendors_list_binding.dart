import '../controller/vendors_list_controller.dart';
import 'package:get/get.dart';

class VendorsListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VendorsListController());
  }
}
