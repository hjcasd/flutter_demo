import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_demo/components/state/page_state.dart';
import 'package:flutter_demo/constants/app_constants.dart';
import 'package:flutter_demo/model/user_entity.dart';
import 'package:flutter_demo/utils/log_helper.dart';
import 'package:get/get.dart';

/// 用户信息页面Controller
class UserController extends GetxController {
  // 状态
  var state = PageState.loading;

  // Model
  var _model = UserEntity();

  // 姓名
  var name = "";

  @override
  void onInit() {
    super.onInit();
    LogHelper.e("UserController onInit()...");
    _loadData();
  }

  @override
  void onClose() {
    super.onClose();
    LogHelper.e("UserController onClose()...");
  }

  /// 加载数据
  void _loadData() async {
    String json = await rootBundle.loadString("${AppConstants.ASSERT_JSON_PATH}user_info.json");
    Future.delayed(Duration(seconds: 1), () {
      _model = UserEntity.fromJson(jsonDecode(json));
      LogHelper.e(_model.tip, tag: "IdentityController");
      state = PageState.success;
      update();
    });
  }

  /// 改变名字
  void changeName(String value) {
    name = value;
    LogHelper.e("name: " + value, tag: "IdentityController");
  }
}
