import 'package:flutter_demo/components/state/page_state.dart';
import 'package:get/get.dart';

/// Web页面Controller
class WebController extends GetxController {
  // 状态
  var state = PageState.loading;

  // 标题
  var title = "";

  // 链接地址
  var url = "";

  @override
  void onReady() {
    super.onReady();

    var arguments = Get.arguments;
    if (arguments != null && arguments is Map) {
      title = arguments["title"];
      url = arguments["url"];
      state = PageState.success;
      update();
    }
  }
}
