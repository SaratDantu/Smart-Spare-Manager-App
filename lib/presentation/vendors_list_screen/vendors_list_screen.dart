import 'controller/vendors_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/widgets/app_bar/appbar_image.dart';
import 'package:smart_app/widgets/app_bar/appbar_title.dart';
import 'package:smart_app/widgets/app_bar/custom_app_bar.dart';

class VendorsListScreen extends GetWidget<VendorsListController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            appBar: CustomAppBar(
                height: getVerticalSize(130),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(35),
                    width: getSize(35),
                    imagePath: ImageConstant.imgMarketsquare,
                    margin: getMargin(left: 29, top: 40, bottom: 33)),
                title: AppbarTitle(
                    text: "lbl_vendor_database2".tr,
                    margin: getMargin(left: 10)),
                styleType: Style.bgFillCyan200),
            body: Container(
                padding: getPadding(left: 13, top: 22, right: 13, bottom: 22),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_smart_manufacturing2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("lbl_vendor_database".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Black9009b)),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage7,
                          height: getVerticalSize(268),
                          width: getHorizontalSize(347),
                          margin: getMargin(top: 26)),
                      GestureDetector(
                          onTap: () {
                            onTapRowlanguage();
                          },
                          child: Container(
                              margin: getMargin(left: 20, top: 43, right: 23),
                              padding: getPadding(
                                  left: 7, top: 11, right: 7, bottom: 11),
                              decoration: AppDecoration.fillGreenA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder25),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2, bottom: 1),
                                        child: Text("lbl_order_manually".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsExtraBold16WhiteA70002)),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowrightGray50,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(left: 56, bottom: 4))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapRowcheckforautomated();
                          },
                          child: Container(
                              margin: getMargin(
                                  left: 20, top: 28, right: 23, bottom: 5),
                              padding: getPadding(
                                  left: 7, top: 10, right: 7, bottom: 10),
                              decoration: AppDecoration.fillGreenA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder25),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 4),
                                        child: Text(
                                            "msg_check_for_automated".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsExtraBold16WhiteA70002)),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowrightGray50,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(
                                            left: 4, top: 2, bottom: 2))
                                  ])))
                    ])),
            bottomNavigationBar: Container(
                height: getVerticalSize(54),
                width: double.maxFinite,
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
                                    imagePath: ImageConstant.imgFeed3,
                                    height: getVerticalSize(38),
                                    width: getHorizontalSize(62))
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(
                              left: 31, top: 11, right: 23, bottom: 15),
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
                                    svgPath: ImageConstant.imgFolder,
                                    height: getSize(25),
                                    width: getSize(25),
                                    margin: getMargin(left: 47, top: 3),
                                    onTap: () {
                                      onTapImgFolder();
                                    }),
                                Spacer(flex: 48),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgGroupofcompanies25x25,
                                    height: getSize(25),
                                    width: getSize(25),
                                    margin: getMargin(top: 2, bottom: 1)),
                                Spacer(flex: 51),
                                CustomImageView(
                                    svgPath: ImageConstant.imgNotification,
                                    height: getSize(25),
                                    width: getSize(25),
                                    margin: getMargin(top: 2, bottom: 1),
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

  onTapRowlanguage() {
    Get.toNamed(AppRoutes.ordersPageScreen);
  }

  onTapRowcheckforautomated() {
    Get.toNamed(AppRoutes.notificationsPageScreen);
  }

  onTapImgHome() {
    Get.toNamed(AppRoutes.homePageScreen);
  }

  onTapImgFolder() {
    Get.toNamed(AppRoutes.sparePartsPageScreen);
  }

  onTapImgNotification() {
    Get.toNamed(AppRoutes.notificationsPageScreen);
  }

  onTapImgSettings() {
    Get.toNamed(AppRoutes.settingsPageScreen);
  }
}
