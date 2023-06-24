import 'controller/slash_controller.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/widgets/custom_button.dart';

class SlashScreen extends GetWidget<SlashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 28, right: 28),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgUndrawgrowthcurveret5s7,
                          height: getVerticalSize(200),
                          width: getHorizontalSize(305)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("msg_smart_spare_manager".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold20)),
                      Container(
                          width: getHorizontalSize(317),
                          margin: getMargin(top: 38),
                          child: Text("msg_streamline_your".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsMedium14)),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_get_started".tr,
                          margin: getMargin(top: 66),
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.PoppinsBold20,
                          onTap: onTapGetstarted)
                    ]))));
  }

  onTapGetstarted() {
    Get.toNamed(AppRoutes.registrationScreen);
  }
}
