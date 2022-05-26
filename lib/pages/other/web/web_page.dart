import 'package:flutter/material.dart';
import 'package:flutter_demo/components/state/simple_state_view.dart';
import 'package:flutter_demo/pages/other/web/logic/web_controller.dart';
import 'package:flutter_demo/pages/other/web/view/web_body_view.dart';
import 'package:get/get.dart';

/// Web页面
class WebPage extends GetView<WebController> {
  const WebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(WebController());
    return GetBuilder<WebController>(
      builder: (controller) {
        return SimpleStateView(
          state: controller.state,
          contentView: WebBodyView(),
        );
      },
    );
  }
}
