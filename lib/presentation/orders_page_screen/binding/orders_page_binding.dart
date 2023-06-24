import '../controller/orders_page_controller.dart';
import 'package:get/get.dart';

class OrdersPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrdersPageController());
  }
}
