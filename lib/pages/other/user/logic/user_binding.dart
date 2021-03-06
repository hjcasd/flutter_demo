import 'package:flutter_demo/pages/other/user/logic/user_controller.dart';
import 'package:get/instance_manager.dart';

/// 用户信息页面Binding
class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(() => UserController());
  }
}
