import '../controller/stock_page_controller.dart';
import 'package:get/get.dart';

class StockPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StockPageController());
  }
}
