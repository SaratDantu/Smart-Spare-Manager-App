import 'controller/orders_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/widgets/app_bar/appbar_image.dart';
import 'package:smart_app/widgets/app_bar/appbar_title.dart';
import 'package:smart_app/widgets/app_bar/custom_app_bar.dart';
import 'package:smart_app/widgets/custom_button.dart';

class OrdersPageScreen extends GetWidget<OrdersPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            appBar: CustomAppBar(
                height: getVerticalSize(128),
                leadingWidth: 59,
                leading: AppbarImage(
                    height: getSize(35),
                    width: getSize(35),
                    svgPath: ImageConstant.imgCart,
                    margin: getMargin(left: 24, top: 40, bottom: 31)),
                title: AppbarTitle(
                    text: "lbl_orders".tr, margin: getMargin(left: 11)),
                styleType: Style.bgFillCyan200),
            body: Container(
                padding: getPadding(top: 1, bottom: 1),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: getHorizontalSize(190),
                                padding: getPadding(left: 36, right: 36),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 12),
                                          child: Text("msg_my_order_history".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .txtPoppinsBold14Cyan200)),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child: SizedBox(
                                              width: getHorizontalSize(117),
                                              child: Divider(
                                                  thickness: getVerticalSize(4),
                                                  color:
                                                      ColorConstant.cyan200)))
                                    ])),
                            CustomButton(
                                height: getVerticalSize(43),
                                width: getHorizontalSize(18),
                                text: "lbl_place_an_order".tr,
                                margin: getMargin(top: 1),
                                variant: ButtonVariant.FillWhiteA700,
                                padding: ButtonPadding.PaddingAll11,
                                fontStyle: ButtonFontStyle.PoppinsBold14)
                          ]),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 31, top: 32),
                              child: Text("lbl_this_month".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsBold14Bluegray600))),
                      Container(
                          margin: getMargin(left: 27, top: 14, right: 23),
                          padding: getPadding(
                              left: 12, top: 9, right: 12, bottom: 9),
                          decoration: AppDecoration.fillGray300,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage8,
                                    height: getSize(39),
                                    width: getSize(39),
                                    margin:
                                        getMargin(left: 2, top: 4, bottom: 1)),
                                Container(
                                    width: getHorizontalSize(94),
                                    margin: getMargin(left: 14, top: 3),
                                    child: Text("msg_ball_bearings_85".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold14Bluegray900a5)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray800,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(top: 8, bottom: 12))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 31, top: 27),
                              child: Text("lbl_previous".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsBold14Bluegray600))),
                      Container(
                          margin: getMargin(left: 27, top: 10, right: 23),
                          padding: getPadding(
                              left: 10, top: 7, right: 10, bottom: 7),
                          decoration: AppDecoration.fillGray300,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage9,
                                    height: getVerticalSize(43),
                                    width: getHorizontalSize(39),
                                    margin: getMargin(bottom: 6)),
                                Container(
                                    width: getHorizontalSize(108),
                                    margin:
                                        getMargin(left: 18, top: 1, bottom: 5),
                                    child: Text("msg_roller_bearings_120".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold14Bluegray900a5)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray800,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(
                                        top: 10, right: 2, bottom: 15))
                              ])),
                      Container(
                          margin: getMargin(left: 25, top: 17, right: 25),
                          padding:
                              getPadding(left: 9, top: 8, right: 9, bottom: 8),
                          decoration: AppDecoration.fillGray300,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage12,
                                    height: getSize(43),
                                    width: getSize(43),
                                    margin:
                                        getMargin(left: 3, top: 1, bottom: 1)),
                                Container(
                                    width: getHorizontalSize(79),
                                    margin: getMargin(left: 14, bottom: 5),
                                    child: Text("lbl_gate_valve_70".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold14Bluegray900a5)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray800,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(top: 10, bottom: 11))
                              ])),
                      Container(
                          margin: getMargin(
                              left: 27, top: 17, right: 23, bottom: 5),
                          padding: getPadding(
                              left: 13, top: 6, right: 13, bottom: 6),
                          decoration: AppDecoration.fillGray300,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage11,
                                    height: getVerticalSize(46),
                                    width: getHorizontalSize(40),
                                    margin: getMargin(top: 5)),
                                Container(
                                    width: getHorizontalSize(76),
                                    margin:
                                        getMargin(left: 19, top: 2, bottom: 6),
                                    child: Text("lbl_wheel_rim_438".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold14Bluegray900a5)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray800,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(
                                        top: 15, right: 1, bottom: 12))
                              ]))
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
                                    imagePath: ImageConstant.imgFeed2,
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
                                        ImageConstant.imgGroupofcompanies,
                                    height: getSize(25),
                                    width: getSize(25),
                                    margin: getMargin(top: 2, bottom: 1),
                                    onTap: () {
                                      onTapImgGroupOfCompanies();
                                    }),
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

  onTapImgHome() {
    Get.toNamed(AppRoutes.homePageScreen);
  }

  onTapImgFolder() {
    Get.toNamed(AppRoutes.sparePartsPageScreen);
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
