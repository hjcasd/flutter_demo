import 'package:flutter/material.dart';
import 'package:flutter_demo/components/app_bar/search_app_bar.dart';
import 'package:flutter_demo/components/state/simple_state_view.dart';
import 'package:flutter_demo/constants/app_colors.dart';
import 'package:flutter_demo/pages/other/user/logic/user_controller.dart';
import 'package:flutter_demo/pages/other/user/view/user_body_view.dart';
import 'package:flutter_demo/routes/route_manager.dart';
import 'package:flutter_demo/utils/log_helper.dart';
import 'package:get/get.dart';

/// 用户信息页面
class UserPage extends GetView<UserController> {
  final TextEditingController _searchController = TextEditingController();

  UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(UserController());
    return Scaffold(
      appBar: SearchAppBar(
        backgroundColor: AppColors.grey_F7F7F7,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            RouteManager.back();
          },
        ),
        hintText: "请输入关键字",
        controller: _searchController,
        onComplete: () {
          LogHelper.e("value: " + _searchController.value.text);
        },
      ),
      body: GetBuilder<UserController>(
        builder: (controller) {
          return SimpleStateView(
            state: controller.state,
            contentView: UserBodyView(),
          );
        },
      ),
    );
  }
}
