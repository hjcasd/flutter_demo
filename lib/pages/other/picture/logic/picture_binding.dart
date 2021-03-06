import 'package:flutter_demo/pages/other/picture/logic/picture_controller.dart';
import 'package:get/instance_manager.dart';

/// 图文列表页面Binding
class PictureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PictureController>(() => PictureController());
  }
}
