import 'package:flutter/material.dart';
import 'package:flutter_demo/components/web/simple_web_view.dart';
import 'package:flutter_demo/pages/other/web/logic/web_controller.dart';
import 'package:get/get.dart';

/// Web页面View
class WebBodyView extends GetView<WebController> {
  const WebBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleWebView(
      title: controller.title,
      url: controller.url,
    );
  }
}
