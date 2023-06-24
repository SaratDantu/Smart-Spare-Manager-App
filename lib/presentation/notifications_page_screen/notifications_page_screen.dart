import 'controller/notifications_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/core/app_export.dart';
import 'package:smart_app/widgets/app_bar/appbar_image.dart';
import 'package:smart_app/widgets/app_bar/appbar_title.dart';
import 'package:smart_app/widgets/app_bar/custom_app_bar.dart';
import 'package:smart_app/widgets/custom_drop_down.dart';

class NotificationsPageScreen extends GetWidget<NotificationsPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            appBar: CustomAppBar(
                height: getVerticalSize(130),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getVerticalSize(35),
                    width: getHorizontalSize(34),
                    svgPath: ImageConstant.imgNotificationWhiteA700,
                    margin: getMargin(left: 30, top: 38, bottom: 44)),
                title: AppbarTitle(
                    text: "lbl_notifications".tr, margin: getMargin(left: 15)),
                styleType: Style.bgFillCyan200),
            body: Container(
                padding: getPadding(left: 19, top: 34, right: 19, bottom: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 12),
                          padding: getPadding(
                              left: 18, top: 11, right: 18, bottom: 11),
                          decoration: AppDecoration.fillGray300,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2, bottom: 2),
                                    child: Text("msg_spare_part_returned".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold14Bluegray900a5)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(23),
                                    margin: getMargin(top: 1, right: 2))
                              ])),
                      Container(
                          margin: getMargin(left: 12, top: 16),
                          padding: getPadding(left: 18, top: 12, bottom: 12),
                          width: size.width,
                          decoration: AppDecoration.fillGray300,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("msg_equipment_restocked".tr,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtPoppinsBold14Bluegray900a5),
                                Container(
                                    margin: getMargin(left: 14),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowright))
                              ])),
                      Container(
                          margin: getMargin(left: 12, top: 17),
                          padding: getPadding(
                              left: 18, top: 10, right: 18, bottom: 10),
                          decoration: AppDecoration.fillGray300,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 6),
                                    child: Text("msg_spare_part_checked".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold14Bluegray900a5)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(23),
                                    margin: getMargin(top: 3, right: 3))
                              ])),
                      CustomDropDown(
                          focusNode: FocusNode(),
                          icon: Container(
                              margin: getMargin(left: 30, right: 23),
                              // decoration: BoxDecoration(
                              //     color: ColorConstant.black900Af),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdown)),
                          hintText: "msg_spare_part_running".tr,
                          margin: getMargin(left: 12, top: 19),
                          variant: DropDownVariant.FillGray300,
                          padding: DropDownPadding.PaddingT10,
                          fontStyle: DropDownFontStyle.PoppinsBold14,
                          items: controller
                              .notificationsPageModelObj.value.dropdownItemList,
                          onChanged: (value) {
                            controller.onSelected(value);
                          }),
                      Container(
                          height: getVerticalSize(164),
                          width: getHorizontalSize(325),
                          margin: getMargin(top: 2),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: getPadding(
                                        left: 58,
                                        top: 20,
                                        right: 58,
                                        bottom: 20),
                                    // decoration: BoxDecoration(
                                        // image: DecorationImage(
                                            // image: AssetImage(
                                            //     ImageConstant.imageNotFound),
                                            // fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(177),
                                              margin:
                                                  getMargin(left: 30, top: 2),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text:
                                                            "lbl_spare_part".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)),
                                                    TextSpan(
                                                        text: " ",
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                    TextSpan(
                                                        text: " ",
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                    TextSpan(
                                                        text:
                                                            "lbl_ball_bearings2"
                                                                .tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    TextSpan(
                                                        text: "lbl_vendor".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)),
                                                    TextSpan(
                                                        text: " ",
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                    TextSpan(
                                                        text:
                                                            "lbl_magnus_exports"
                                                                .tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900Bf,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    TextSpan(
                                                        text: "lbl_cost".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)),
                                                    TextSpan(
                                                        text:
                                                            "lbl_0_35_per_unit"
                                                                .tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900Bf,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    TextSpan(
                                                        text: "lbl_total_parts"
                                                            .tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)),
                                                    TextSpan(
                                                        text: "lbl_25_units".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900Bf,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    TextSpan(
                                                        text:
                                                            "lbl_total_cost".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)),
                                                    TextSpan(
                                                        text: " ",
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                                    TextSpan(
                                                        text: "lbl_85".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900C1,
                                                            fontSize:
                                                                getFontSize(14),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400))
                                                  ]),
                                                  textAlign: TextAlign.left))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: getVerticalSize(20),
                                    width: getHorizontalSize(325),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.cyan200))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Text("msg_purchase_order_generated".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtPoppinsExtraBold16Gray50))
                          ])),
                      Padding(
                          padding: getPadding(
                              left: 40, top: 10, right: 28, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: getHorizontalSize(119),
                                    margin: getMargin(top: 2),
                                    padding: getPadding(
                                        left: 30, top: 1, right: 33, bottom: 1),
                                    decoration: AppDecoration.txtFillGray600
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder11),
                                    child: Text("lbl_cancel".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtPoppinsBold13Gray100)),
                                Container(
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(119),
                                    margin: getMargin(left: 31, bottom: 1),
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: getVerticalSize(23),
                                                  width: getHorizontalSize(119),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .greenA700,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  11))))),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Text("lbl_confirm".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold13Gray100))
                                        ]))
                              ]))
                    ])),
            bottomNavigationBar: Container(
                height: getVerticalSize(54),
                width: getHorizontalSize(371),
                margin: getMargin(left: 4),
                child: Stack(alignment: Alignment.center, children: [
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
                                    imagePath: ImageConstant.imgFeed,
                                    height: getVerticalSize(38),
                                    width: getHorizontalSize(62))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(
                              left: 30, top: 11, right: 25, bottom: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgHomeBlack900,
                                    height: getVerticalSize(23),
                                    width: getHorizontalSize(24),
                                    margin: getMargin(top: 9, bottom: 1),
                                    onTap: () {
                                      onTapImgHome();
                                    }),
                                CustomImageView(
                                    svgPath: ImageConstant.imgFolder,
                                    height: getVerticalSize(25),
                                    width: getHorizontalSize(24),
                                    margin: getMargin(left: 46, top: 8),
                                    onTap: () {
                                      onTapImgFolder();
                                    }),
                                Spacer(flex: 49),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgGroupofcompanies,
                                    height: getSize(25),
                                    width: getSize(25),
                                    margin: getMargin(top: 2, bottom: 6),
                                    onTap: () {
                                      onTapImgGroupOfCompanies();
                                    }),
                                Spacer(flex: 50),
                                CustomImageView(
                                    svgPath: ImageConstant
                                        .imgNotificationBlueGray600,
                                    height: getVerticalSize(25),
                                    width: getHorizontalSize(24),
                                    margin: getMargin(top: 2, bottom: 6)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgSettings,
                                    height: getSize(28),
                                    width: getSize(28),
                                    margin: getMargin(left: 39, bottom: 5),
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

  onTapImgSettings() {
    Get.toNamed(AppRoutes.settingsPageScreen);
  }
}
