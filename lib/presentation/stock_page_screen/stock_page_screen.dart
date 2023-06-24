import 'controller/stock_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/widgets/app_bar/appbar_image.dart';
import 'package:smart_app/widgets/app_bar/appbar_title.dart';
import 'package:smart_app/widgets/app_bar/custom_app_bar.dart';
import 'package:smart_app/widgets/custom_button.dart';

class StockPageScreen extends GetWidget<StockPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            appBar: CustomAppBar(
                height: getVerticalSize(123),
                leadingWidth: 60,
                leading: AppbarImage(
                    height: getSize(35),
                    width: getSize(35),
                    imagePath: ImageConstant.imgError,
                    margin: getMargin(left: 25, top: 39, bottom: 32)),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_low_stock_alert2".tr),
                styleType: Style.bgFillCyan200),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(130),
                          width: getHorizontalSize(283),
                          margin: getMargin(top: 11),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin: getMargin(left: 1),
                                    padding: getPadding(
                                        left: 8, top: 22, right: 8, bottom: 22),
                                    decoration: AppDecoration.fillWhiteA70001,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(200),
                                              margin: getMargin(top: 39),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text:
                                                            "msg_minimum_required2"
                                                                .tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .gray800,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800)),
                                                    TextSpan(
                                                        text: "lbl_100".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .redA700,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800)),
                                                    TextSpan(
                                                        text:
                                                            "msg_available_number"
                                                                .tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .gray800,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800)),
                                                    TextSpan(
                                                        text: "lbl_25".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .redA700,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800))
                                                  ]),
                                                  textAlign: TextAlign.left))
                                        ]))),
                            CustomButton(
                                height: getVerticalSize(40),
                                width: getHorizontalSize(283),
                                text: "lbl_ball_bearings".tr,
                                variant: ButtonVariant.FillBlack9007c,
                                alignment: Alignment.topCenter)
                          ])),
                      Container(
                          height: getVerticalSize(130),
                          width: getHorizontalSize(283),
                          margin: getMargin(top: 46),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin: getMargin(right: 1),
                                    padding: getPadding(
                                        left: 8, top: 23, right: 8, bottom: 23),
                                    decoration: AppDecoration.fillWhiteA70001,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(190),
                                              margin: getMargin(top: 37),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text:
                                                            "msg_minimum_required2"
                                                                .tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .gray800,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800)),
                                                    TextSpan(
                                                        text: "lbl_10".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .redA700,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800)),
                                                    TextSpan(
                                                        text:
                                                            "msg_available_number"
                                                                .tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .gray800,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800)),
                                                    TextSpan(
                                                        text: "lbl_0".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .redA400,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800))
                                                  ]),
                                                  textAlign: TextAlign.left))
                                        ]))),
                            CustomButton(
                                height: getVerticalSize(40),
                                width: getHorizontalSize(283),
                                text: "lbl_nuts".tr,
                                variant: ButtonVariant.FillBlack9007c,
                                alignment: Alignment.topCenter)
                          ])),
                      Container(
                          height: getVerticalSize(130),
                          width: getHorizontalSize(283),
                          margin: getMargin(top: 41),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin: getMargin(right: 1),
                                    padding: getPadding(
                                        left: 8, top: 26, right: 8, bottom: 26),
                                    decoration: AppDecoration.fillWhiteA70001,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(195),
                                              margin: getMargin(top: 31),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text:
                                                            "msg_minimum_required2"
                                                                .tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .gray800,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800)),
                                                    TextSpan(
                                                        text: "lbl_40".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .redA700,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800)),
                                                    TextSpan(
                                                        text:
                                                            "msg_available_number"
                                                                .tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .gray800,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800)),
                                                    TextSpan(
                                                        text: "lbl_25".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .redA700,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800))
                                                  ]),
                                                  textAlign: TextAlign.left))
                                        ]))),
                            CustomButton(
                                height: getVerticalSize(40),
                                width: getHorizontalSize(283),
                                text: "lbl_drills".tr,
                                variant: ButtonVariant.FillBlack9007c,
                                alignment: Alignment.topCenter)
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: getMargin(left: 26, top: 41, right: 47),
                              padding: getPadding(
                                  left: 18, top: 11, right: 18, bottom: 11),
                              decoration: AppDecoration.fillTeal100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder25),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("msg_redirect_to_order".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsExtraBold16Black90001)),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowrightGray800,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(left: 15, top: 2),
                                        onTap: () {
                                          onTapImgArrowright();
                                        })
                                  ]))),
                      Container(
                          height: getVerticalSize(54),
                          width: double.maxFinite,
                          margin: getMargin(top: 62),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: getPadding(top: 8, bottom: 8),
                                    decoration: AppDecoration.outlineBlack9003f,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgFeed1,
                                              height: getVerticalSize(38),
                                              width: getHorizontalSize(62))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(
                                        left: 31,
                                        top: 11,
                                        right: 23,
                                        bottom: 15),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgHomeBlack900,
                                              height: getVerticalSize(23),
                                              width: getHorizontalSize(25),
                                              margin:
                                                  getMargin(top: 4, bottom: 1),
                                              onTap: () {
                                                onTapImgHome();
                                              }),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgFolder,
                                              height: getSize(25),
                                              width: getSize(25),
                                              margin:
                                                  getMargin(left: 47, top: 3),
                                              onTap: () {
                                                onTapImgFolder();
                                              }),
                                          Spacer(flex: 48),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGroupofcompanies,
                                              height: getSize(25),
                                              width: getSize(25),
                                              margin:
                                                  getMargin(top: 2, bottom: 1),
                                              onTap: () {
                                                onTapImgGroupOfCompanies();
                                              }),
                                          Spacer(flex: 51),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgNotification,
                                              height: getSize(25),
                                              width: getSize(25),
                                              margin:
                                                  getMargin(top: 2, bottom: 1),
                                              onTap: () {
                                                onTapImgNotification();
                                              }),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgSettings,
                                              height: getSize(28),
                                              width: getSize(28),
                                              margin: getMargin(left: 39),
                                              onTap: () {
                                                onTapImgSettings();
                                              })
                                        ])))
                          ]))
                    ]))));
  }

  onTapImgArrowright() {
    Get.toNamed(AppRoutes.ordersPageScreen);
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
