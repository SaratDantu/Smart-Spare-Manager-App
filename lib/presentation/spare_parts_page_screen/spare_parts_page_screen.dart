import 'controller/spare_parts_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/widgets/app_bar/appbar_image.dart';
import 'package:smart_app/widgets/app_bar/custom_app_bar.dart';
import 'package:smart_app/widgets/custom_button.dart';

class SparePartsPageScreen extends GetWidget<SparePartsPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            appBar: CustomAppBar(
                height: getVerticalSize(128),
                leadingWidth: 57,
                leading: AppbarImage(
                    height: getSize(35),
                    width: getSize(35),
                    imagePath: ImageConstant.imgTools,
                    margin: getMargin(left: 22, top: 36, bottom: 35)),
                title: Padding(
                    padding: getPadding(left: 12),
                    child: Text("msg_spare_parts_database2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold24)),
                styleType: Style.bgFillCyan200),
            body: Container(
                padding: getPadding(left: 5, top: 21, right: 5, bottom: 21),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_smart_manufacturing2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Text("msg_spare_parts_database".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsBold14Black9009b)),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage6,
                          height: getVerticalSize(200),
                          width: getHorizontalSize(363),
                          margin: getMargin(top: 26)),
                      CustomButton(
                          height: getVerticalSize(40),
                          text: "msg_no_of_spare_parts".tr,
                          margin: getMargin(left: 26, top: 69, right: 27),
                          variant: ButtonVariant.FillWhiteA700,
                          padding: ButtonPadding.PaddingT7,
                          fontStyle: ButtonFontStyle.PoppinsBold13,
                          suffixWidget: Container(
                              margin: getMargin(left: 14),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowrightGray800)),
                          onTap: onTapNoofsparepartsrunningoutofstock),
                      Container(
                          margin: getMargin(left: 26, top: 36, right: 27),
                          padding:
                              getPadding(left: 9, top: 3, right: 9, bottom: 3),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 1, top: 9, bottom: 4),
                                    child: Text("msg_check_vendor_database".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsBold13)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray800,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 10),
                                    onTap: () {
                                      onTapImgArrowrightOne();
                                    })
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapRowcheckalertnotifications();
                          },
                          child: Container(
                              margin: getMargin(
                                  left: 22, top: 35, right: 31, bottom: 5),
                              padding: getPadding(
                                  left: 4, top: 7, right: 4, bottom: 7),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 7, top: 3, bottom: 2),
                                        child: Text(
                                            "msg_check_alert_notifications".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold13)),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowrightGray800,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(top: 2))
                                  ])))
                    ])),
            bottomNavigationBar: Container(
                height: getVerticalSize(54),
                width: getHorizontalSize(369),
                margin: getMargin(left: 6),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(top: 8, bottom: 8),
                          decoration: AppDecoration.outlineBlack9003f,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgFeed38x62,
                                    height: getVerticalSize(38),
                                    width: getHorizontalSize(62))
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(top: 12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgHomeBlack900,
                                    height: getVerticalSize(23),
                                    width: getHorizontalSize(25),
                                    margin: getMargin(top: 4, bottom: 1),
                                    onTap: () {
                                      onTapImgHome();
                                    }),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMap,
                                    height: getSize(25),
                                    width: getSize(25),
                                    margin: getMargin(left: 47, top: 3)),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgGroupofcompanies,
                                    height: getSize(25),
                                    width: getSize(25),
                                    margin:
                                        getMargin(left: 52, top: 2, bottom: 1),
                                    onTap: () {
                                      onTapImgGroupOfCompanies();
                                    }),
                                CustomImageView(
                                    svgPath: ImageConstant.imgNotification,
                                    height: getSize(25),
                                    width: getSize(25),
                                    margin:
                                        getMargin(left: 55, top: 2, bottom: 1),
                                    onTap: () {
                                      onTapImgNotification();
                                    }),
                                CustomImageView(
                                    svgPath: ImageConstant.imgSettings,
                                    height: getSize(28),
                                    width: getSize(28),
                                    margin: getMargin(left: 39),
                                    onTap: () {
                                      onTapImgSettings();
                                    })
                              ])))
                ]))));
  }

  onTapNoofsparepartsrunningoutofstock() {
    Get.toNamed(AppRoutes.stockPageScreen);
  }

  onTapImgArrowrightOne() {
    Get.toNamed(AppRoutes.vendorsListScreen);
  }

  onTapRowcheckalertnotifications() {
    Get.toNamed(AppRoutes.notificationsPageScreen);
  }

  onTapImgHome() {
    Get.toNamed(AppRoutes.homePageScreen);
  }

  onTapImgGroupOfCompanies() {
    Get.toNamed(AppRoutes.vendorsListScreen);
  }

  onTapImgNotification() {
    Get.toNamed(AppRoutes.notificationsPageScreen);
  }

  onTapImgSettings() {
    Get.toNamed(AppRoutes.settingsPageScreen);
  }
}
