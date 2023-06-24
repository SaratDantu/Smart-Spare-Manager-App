import 'controller/settings_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/widgets/app_bar/appbar_image.dart';
import 'package:smart_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:smart_app/widgets/app_bar/custom_app_bar.dart';
import 'package:smart_app/widgets/custom_switch.dart';

class SettingsPageScreen extends GetWidget<SettingsPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: getMargin(left: 3, top: 18),
                          padding: getPadding(top: 51, bottom: 51),
                          decoration: AppDecoration.fillCyan200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(182),
                                    leadingWidth: 71,
                                    leading: AppbarImage(
                                        height: getSize(40),
                                        width: getSize(40),
                                        svgPath:
                                            ImageConstant.imgSettingsWhiteA700,
                                        margin: getMargin(left: 31)),
                                    title: AppbarSubtitle(
                                        text: "lbl_settings".tr,
                                        margin: getMargin(left: 8)))
                              ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: getMargin(left: 24, right: 21),
                          padding: getPadding(
                              left: 16, top: 13, right: 16, bottom: 13),
                          decoration: AppDecoration.outlineGray80026.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 12, right: 18),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  height: getSize(50),
                                                  width: getSize(50),
                                                  decoration: AppDecoration
                                                      .outlineIndigo9003f,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage4,
                                                            height: getSize(50),
                                                            width: getSize(50),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        25)),
                                                            alignment: Alignment
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
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        25)),
                                                            alignment: Alignment
                                                                .centerLeft)
                                                      ])),
                                              Container(
                                                  width: getHorizontalSize(198),
                                                  margin: getMargin(bottom: 2),
                                                  child: Text(
                                                      "msg_smart_manufacturing"
                                                          .tr,
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtRubikRegular20))
                                            ]))),
                                Padding(
                                    padding: getPadding(top: 29),
                                    child: Text("msg_account_settings".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRubikRegular18)),
                                Padding(
                                    padding:
                                        getPadding(left: 1, top: 21, right: 7),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_edit_profile".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRegular18Black900)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightGray800,
                                              height: getSize(24),
                                              width: getSize(24))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 1, top: 20, right: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "lbl_change_password".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRegular18Black900)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightGray800,
                                              height: getSize(24),
                                              width: getSize(24))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 1, top: 17, right: 17),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 3, bottom: 3),
                                              child: Text(
                                                  "msg_push_notifications".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRegular18Black900)),
                                          Obx(() => CustomSwitch(
                                              value: controller
                                                  .isSelectedSwitch.value,
                                              onChanged: (value) {
                                                controller.isSelectedSwitch
                                                    .value = value;
                                              }))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 1, top: 18, right: 18),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 8),
                                              child: Text("lbl_dark_mode".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRegular18Black900)),
                                          Obx(() => CustomSwitch(
                                              margin: getMargin(top: 1),
                                              value: controller
                                                  .isSelectedSwitch1.value,
                                              onChanged: (value) {
                                                controller.isSelectedSwitch1
                                                    .value = value;
                                              }))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 8, top: 78),
                                    child: Text("lbl_more".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRubikRegular18Gray500)),
                                GestureDetector(
                                    onTap: () {
                                      onTapRowaboutus();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 8, top: 22, right: 18),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_about_us".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular18),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightGray800,
                                                  height: getVerticalSize(20),
                                                  width: getHorizontalSize(19),
                                                  margin: getMargin(bottom: 7))
                                            ]))),
                                Padding(
                                    padding:
                                        getPadding(left: 8, top: 19, right: 18),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "lbl_privacy_policy".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular18)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightGray800,
                                              height: getVerticalSize(20),
                                              width: getHorizontalSize(19),
                                              margin: getMargin(bottom: 8))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 8, top: 17, right: 18),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("msg_terms_and_conditions".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsRegular18),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightGray800,
                                              height: getVerticalSize(20),
                                              width: getHorizontalSize(19),
                                              margin: getMargin(bottom: 6))
                                        ])),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 11,
                                            top: 24,
                                            right: 18,
                                            bottom: 75),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Text(
                                                      "msg_help_and_support".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular18)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightGray800,
                                                  height: getVerticalSize(20),
                                                  width: getHorizontalSize(19),
                                                  margin: getMargin(bottom: 9))
                                            ])))
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(top: 217),
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.gray400)))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: getPadding(bottom: 336),
                          child: SizedBox(
                              width: getHorizontalSize(372),
                              child: Divider(
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.gray400)))),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                          padding: getPadding(bottom: 47),
                          child: SizedBox(
                              width: getHorizontalSize(350),
                              child: Divider(
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.gray400)))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: getPadding(top: 8, bottom: 8),
                          decoration: AppDecoration.outlineBlack9003f,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: []))),
                  CustomImageView(
                      svgPath: ImageConstant.imgSettingsBlueGray600,
                      height: getSize(28),
                      width: getSize(28),
                      alignment: Alignment.bottomRight,
                      margin: getMargin(right: 20, bottom: 15)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: getPadding(
                              left: 34, top: 771, right: 87, bottom: 15),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgHomeBlack900,
                                height: getVerticalSize(23),
                                width: getHorizontalSize(25),
                                margin: getMargin(top: 2, bottom: 1),
                                onTap: () {
                                  onTapImgHome();
                                }),
                            CustomImageView(
                                svgPath: ImageConstant.imgFolder,
                                height: getSize(25),
                                width: getSize(25),
                                margin: getMargin(left: 47, top: 1),
                                onTap: () {
                                  onTapImgFolder();
                                }),
                            Spacer(flex: 48),
                            CustomImageView(
                                imagePath: ImageConstant.imgGroupofcompanies,
                                height: getSize(25),
                                width: getSize(25),
                                margin: getMargin(bottom: 1),
                                onTap: () {
                                  onTapImgGroupOfCompanies();
                                }),
                            Spacer(flex: 51),
                            CustomImageView(
                                svgPath: ImageConstant.imgNotification,
                                height: getSize(25),
                                width: getSize(25),
                                margin: getMargin(bottom: 1),
                                onTap: () {
                                  onTapImgNotification();
                                })
                          ])))
                ]))));
  }

  onTapRowaboutus() {
    Get.toNamed(AppRoutes.aboutUsScreen);
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
}
