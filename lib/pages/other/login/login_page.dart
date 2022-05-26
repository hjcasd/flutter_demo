import 'package:flutter/material.dart';
import 'package:flutter_demo/components/app_bar/simple_app_bar.dart';
import 'package:flutter_demo/pages/other/login/logic/login_controller.dart';
import 'package:flutter_demo/pages/other/login/view/login_body_view.dart';
import 'package:get/get.dart';

/// 登录页面
class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      appBar: SimpleAppBar(
        "登录页面",
      ),
      body: GetBuilder<LoginController>(
        builder: (controller) {
          return LoginBodyView();
        },
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
