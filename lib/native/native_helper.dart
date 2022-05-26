import 'package:flutter_demo/native/channel_helper.dart';
import 'package:flutter_demo/native/native_method.dart';

/// Flutter调用原生方法工具类
class NativeHelper {
  NativeHelper._();

  /// 原生返回
  static void back() {
    ChannelHelper.invokeMethod(NativeMethod.BACK);
  }

  /// 原生路由跳转
  static void route(String path) {
    ChannelHelper.invokeMethod(NativeMethod.ROUTE, path);
  }

  /// 原生吐司
  static void toast(String msg) {
    ChannelHelper.invokeMethod(NativeMethod.TOAST, msg);
  }
}
