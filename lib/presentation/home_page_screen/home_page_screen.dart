import 'controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/widgets/app_bar/appbar_image.dart';
import 'package:smart_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:smart_app/widgets/app_bar/custom_app_bar.dart';

class HomePageScreen extends GetWidget<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(287),
                          width: double.maxFinite,
                          margin: getMargin(top: 36),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding:
                                            getPadding(top: 36, bottom: 36),
                                        decoration: AppDecoration.fillCyan200
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomAppBar(
                                                  height: getVerticalSize(44),
                                                  leadingWidth: 61,
                                                  leading: AppbarImage(
                                                      height: getSize(30),
                                                      width: getSize(30),
                                                      svgPath:
                                                          ImageConstant.imgHome,
                                                      margin: getMargin(
                                                          left: 31, bottom: 3)),
                                                  title: AppbarSubtitle(
                                                      text: "lbl_home".tr,
                                                      margin:
                                                          getMargin(left: 18))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 52,
                                                      top: 32,
                                                      right: 55),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            height: getSize(50),
                                                            width: getSize(50),
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineIndigo9003f,
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgImage4,
                                                                      height:
                                                                          getSize(
                                                                              50),
                                                                      width:
                                                                          getSize(
                                                                              50),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              25)),
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgImage5,
                                                                      height:
                                                                          getVerticalSize(
                                                                              50),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              45),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              25)),
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft)
                                                                ])),
                                                        Expanded(
                                                            child: Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        198),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            19,
                                                                        bottom:
                                                                            2),
                                                                child: Text(
                                                                    "msg_smart_manufacturing"
                                                                        .tr,
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtRubikRegular20)))
                                                      ])),
                                              Container(
                                                  margin: getMargin(
                                                      left: 36,
                                                      top: 52,
                                                      right: 39),
                                                  padding: getPadding(
                                                      left: 109,
                                                      top: 6,
                                                      right: 109,
                                                      bottom: 6),
                                                  decoration: AppDecoration
                                                      .fillGray50ed
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder16),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("lbl".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtSFProDisplayMedium18),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 4),
                                                            child: Text(
                                                                "lbl_search".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtSFProTextRegular17))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: getPadding(bottom: 101),
                                        child: SizedBox(
                                            width: double.maxFinite,
                                            child: Divider(
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray400))))
                              ])),
                      Padding(
                          padding: getPadding(left: 23, top: 30, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Container(
                                        margin: getMargin(right: 20),
                                        padding: getPadding(
                                            left: 13,
                                            top: 11,
                                            right: 13,
                                            bottom: 11),
                                        decoration:
                                            AppDecoration.fillBluegray100,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(116),
                                                  child: Text(
                                                      "msg_total_spare_parts"
                                                          .tr,
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtRubikRomanSemiBold16)),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapRowtwohundredtwentyfive();
                                                  },
                                                  child: Container(
                                                      margin: getMargin(
                                                          left: 4,
                                                          top: 18,
                                                          right: 1,
                                                          bottom: 6),
                                                      decoration: AppDecoration
                                                          .fillCyan200,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "lbl_225"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRubikRomanSemiBold24)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowrightBlack900,
                                                                height:
                                                                    getSize(24),
                                                                width:
                                                                    getSize(24),
                                                                margin:
                                                                    getMargin(
                                                                        left: 7,
                                                                        top: 4,
                                                                        bottom:
                                                                            3))
                                                          ])))
                                            ]))),
                                Expanded(
                                    child: Container(
                                        margin: getMargin(left: 20),
                                        padding: getPadding(
                                            left: 12,
                                            top: 11,
                                            right: 12,
                                            bottom: 11),
                                        decoration:
                                            AppDecoration.fillBluegray100,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(94),
                                                  child: Text(
                                                      "msg_spare_parts_running"
                                                          .tr,
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtRubikRomanSemiBold16)),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(31),
                                                      width: getHorizontalSize(
                                                          111),
                                                      margin: getMargin(
                                                          top: 14, bottom: 5),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: GestureDetector(
                                                                    onTap: () {
                                                                      onTapStackarrowrightone();
                                                                    },
                                                                    child: Container(
                                                                        height: getVerticalSize(31),
                                                                        width: getHorizontalSize(111),
                                                                        padding: getPadding(left: 3, top: 2, right: 3, bottom: 2),
                                                                        decoration: AppDecoration.fillCyan200,
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgArrowrightBlack900,
                                                                              height: getSize(24),
                                                                              width: getSize(24),
                                                                              alignment: Alignment.topRight,
                                                                              onTap: () {
                                                                                onTapImgArrowrightOne();
                                                                              })
                                                                        ])))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            38),
                                                                    child: Text(
                                                                        "lbl_15"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRubikRomanSemiBold24)))
                                                          ])))
                                            ])))
                              ])),
                      Container(
                          margin: getMargin(left: 20, top: 36, right: 23),
                          padding:
                              getPadding(left: 7, top: 5, right: 7, bottom: 5),
                          decoration: AppDecoration.fillCyan200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    width: getHorizontalSize(216),
                                    margin: getMargin(top: 2),
                                    child: Text("msg_check_available".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style:
                                            AppStyle.txtRubikRomanSemiBold20)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(35),
                                    width: getSize(35),
                                    margin:
                                        getMargin(left: 27, top: 8, bottom: 8),
                                    onTap: () {
                                      onTapImgArrowrightTwo();
                                    })
                              ])),
                      Container(
                          margin: getMargin(left: 20, top: 19, right: 23),
                          padding: getPadding(
                              left: 10, top: 13, right: 10, bottom: 13),
                          decoration: AppDecoration.fillCyan200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 7),
                                    child: Text("msg_redirect_for_orders".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRubikRomanSemiBold22)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(35),
                                    width: getSize(35),
                                    margin: getMargin(left: 26),
                                    onTap: () {
                                      onTapImgArrowrightThree();
                                    })
                              ])),
                      Container(
                          margin: getMargin(left: 20, top: 20, right: 23),
                          padding: getPadding(
                              left: 10, top: 12, right: 10, bottom: 12),
                          decoration: AppDecoration.fillCyan200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4, bottom: 5),
                                    child: Text("lbl_more_about_us".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRubikRomanSemiBold22)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(35),
                                    width: getSize(35),
                                    margin: getMargin(left: 50, bottom: 2),
                                    onTap: () {
                                      onTapImgArrowrightFour();
                                    })
                              ])),
                      Container(
                          height: getVerticalSize(54),
                          width: double.maxFinite,
                          margin: getMargin(top: 33),
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
                                              imagePath: ImageConstant.imgFeed,
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
                                                  ImageConstant.imgHomeTeal400,
                                              height: getVerticalSize(23),
                                              width: getHorizontalSize(25),
                                              margin:
                                                  getMargin(top: 4, bottom: 1)),
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

  onTapRowtwohundredtwentyfive() {
    Get.toNamed(AppRoutes.sparePartsPageScreen);
  }

  onTapStackarrowrightone() {
    Get.toNamed(AppRoutes.stockPageScreen);
  }

  onTapImgArrowrightOne() {
    Get.toNamed(AppRoutes.stockPageScreen);
  }

  onTapImgArrowrightTwo() {
    Get.toNamed(AppRoutes.vendorsListScreen);
  }

  onTapImgArrowrightThree() {
    Get.toNamed(AppRoutes.ordersPageScreen);
  }

  onTapImgArrowrightFour() {
    Get.toNamed(AppRoutes.aboutUsScreen);
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
