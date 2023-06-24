import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/presentation/orders_page_screen/models/orders_page_model.dart';

class OrdersPageController extends GetxController {
  Rx<OrdersPageModel> ordersPageModelObj = OrdersPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
