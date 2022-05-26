import 'package:flutter/material.dart';
import 'package:flutter_demo/components/app_bar/simple_app_bar.dart';
import 'package:flutter_demo/pages/other/picture/view/picture_body_view.dart';
import 'package:flutter_demo/routes/route_paths.dart';
import 'package:flutter_demo/routes/route_manager.dart';
import 'package:get/get.dart';

import 'logic/picture_controller.dart';

/// 图文列表页面
class PicturePage extends GetView<PictureController> {
  const PicturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(PictureController());
    return Scaffold(
      appBar: SimpleAppBar(
        "图文列表",
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
            ),
            onPressed: () {
              RouteManager.toNamed(RoutePaths.User);
            },
          )
        ],
      ),
      body: GetBuilder<PictureController>(
        builder: (controller) {
          return PictureBodyView();
        },
      ),
    );
  }
}
