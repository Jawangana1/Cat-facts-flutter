import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:cat_facts/presentation/android_large_1_screen/models/android_large_1_model.dart';
import 'package:flutter/material.dart';
import 'package:cat_facts/data/models/fact/get_fact_resp.dart';
import 'package:cat_facts/data/apiClient/api_client.dart';

class AndroidLarge1Controller extends GetxController with StateMixin<dynamic> {
  Rx<AndroidLarge1Model> androidLarge1ModelObj = AndroidLarge1Model().obs;

  GetFactResp getFactResp = GetFactResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchFact({VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchFact(onSuccess: (resp) {
      onFetchFactSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetchFactError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onFetchFactSuccess(var response) {
    getFactResp = GetFactResp.fromJson(response);
  }

  void onFetchFactError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }
}
