import '../controller/notifications_page_controller.dart';
import 'package:get/get.dart';

class NotificationsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsPageController());
  }
}
