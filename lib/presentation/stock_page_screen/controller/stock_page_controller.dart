import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/presentation/stock_page_screen/models/stock_page_model.dart';

class StockPageController extends GetxController {
  Rx<StockPageModel> stockPageModelObj = StockPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
