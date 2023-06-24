import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/presentation/vendors_list_screen/models/vendors_list_model.dart';

class VendorsListController extends GetxController {
  Rx<VendorsListModel> vendorsListModelObj = VendorsListModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
