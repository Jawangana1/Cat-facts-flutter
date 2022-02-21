import 'controller/android_large_1_controller.dart';
import 'package:cat_facts/core/app_export.dart';
import 'package:flutter/material.dart';

class AndroidLarge1Screen extends GetWidget<AndroidLarge1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.white_A700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration:
                            BoxDecoration(color: ColorConstant.white_A700),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                      ImageConstant.img_unsplashcfkwe7,
                                      height: getSize(360),
                                      width: getSize(360),
                                      fit: BoxFit.fill)),
                              Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(9),
                                      top: getVerticalSize(19),
                                      right: getHorizontalSize(8),
                                      bottom: getVerticalSize(20)),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.deep_purple_A200,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(12)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: ColorConstant
                                                .deep_purple_A200_66,
                                            spreadRadius: getHorizontalSize(2),
                                            blurRadius: getHorizontalSize(2),
                                            offset: Offset(0, 2))
                                      ]),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(154),
                                                width: getHorizontalSize(308),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(15),
                                                    top: getVerticalSize(22),
                                                    right:
                                                        getHorizontalSize(15)),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      154),
                                                              width:
                                                                  getHorizontalSize(
                                                                      308),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomRight,
                                                                        child: Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: getHorizontalSize(10), top: getVerticalSize(10)),
                                                                            child: Container(height: getSize(98), width: getSize(98), child: CircularProgressIndicator(value: 0.5, strokeWidth: getHorizontalSize(8))))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topLeft,
                                                                        child: Container(
                                                                            width:
                                                                                getHorizontalSize(267),
                                                                            margin: EdgeInsets.only(right: getHorizontalSize(10), bottom: getVerticalSize(10)),
                                                                            child: Obx(() => Text(controller.androidLarge1ModelObj.value.neuteringacatTxt.value, maxLines: null, textAlign: TextAlign.left, style: AppStyle.textStyleRobotoregular24.copyWith(fontSize: getFontSize(24))))))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      37),
                                                              margin: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          31),
                                                                  top:
                                                                      getVerticalSize(
                                                                          35),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          31),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          35)),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: <
                                                                          InlineSpan>[
                                                                        TextSpan(
                                                                            text: "lbl_752"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.white_A700,
                                                                                fontSize: getFontSize(20),
                                                                                fontFamily: 'Roboto',
                                                                                fontWeight: FontWeight.w400)),
                                                                        TextSpan(
                                                                            text: "lbl"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.white_A700,
                                                                                fontSize: getFontSize(20),
                                                                                fontFamily: 'Roboto',
                                                                                fontWeight: FontWeight.w400))
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left)))
                                                    ]))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(20),
                                                top: getVerticalSize(96),
                                                right: getHorizontalSize(20),
                                                bottom: getVerticalSize(20)),
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapBtnGivememycat();
                                                },
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height: getVerticalSize(32),
                                                    width:
                                                        getHorizontalSize(185),
                                                    decoration: AppDecoration
                                                        .textStyleRobotoregular14,
                                                    child: Text(
                                                        "msg_give_me_my_cat".tr,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .textStyleRobotoregular14
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        14))))))
                                      ]))
                            ]))))));
  }

  void onTapBtnGivememycat() {
    controller.callFetchFact(
      successCall: _onFetchFactSuccess,
      errCall: _onFetchFactError,
    );
  }

  void _onFetchFactSuccess() {
    controller.androidLarge1ModelObj.value.neuteringacatTxt.value =
        controller.getFactResp.fact!.toString();
  }

  void _onFetchFactError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "No cat facts",
        middleText: "Try again");
  }
}
