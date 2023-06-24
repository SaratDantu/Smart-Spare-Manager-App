import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/presentation/notifications_page_screen/models/notifications_page_model.dart';

class NotificationsPageController extends GetxController {
  Rx<NotificationsPageModel> notificationsPageModelObj =
      NotificationsPageModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    notificationsPageModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    notificationsPageModelObj.value.dropdownItemList.refresh();
  }
}
