import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/components/button/simple_button.dart';
import 'package:flutter_demo/components/form/form_read_item.dart';
import 'package:flutter_demo/components/form/form_write_item.dart';
import 'package:flutter_demo/pages/other/user/logic/user_controller.dart';
import 'package:flutter_demo/routes/route_paths.dart';
import 'package:flutter_demo/routes/route_manager.dart';
import 'package:flutter_demo/utils/extension/string_seprate.dart';
import 'package:get/get.dart';

/// 用户信息页面View
class UserBodyView extends GetView<UserController> {
  const UserBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormReadItem(
          title: '身份证',
          content: '3101*********244X',
        ),
        FormWriteItem(
          title: "姓名",
          value: controller.name,
          placeholder: "请输入姓名",
          inputFormatters: [
            TextInputFormatter.withFunction(
              (oldValue, newValue) => TextEditingValue(
                text: newValue.text.stringSeparate(
                  separator: " ",
                  count: 4,
                  fromRightToLeft: false,
                ),
              ),
            )
          ],
          onChanged: (value) {
            controller.changeName(value);
          },
          onClear: () {
            controller.changeName("");
          },
        ),
        SimpleButton(
          "跳转到登录页面",
          onPressed: () {
            RouteManager.toNamed(RoutePaths.Login);
          },
        ),
      ],
    );
  }
}
