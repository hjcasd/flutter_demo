import 'package:flutter/material.dart';
import 'package:flutter_demo/components/button/route_button.dart';
import 'package:flutter_demo/constants/app_colors.dart';
import 'package:flutter_demo/routes/route_paths.dart';
import 'package:flutter_demo/routes/route_manager.dart';

/// 其他Tab页面
class OtherPage extends StatefulWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _OtherPageState();
  }
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          RouteButton(
            "弹框演示",
            RoutePaths.Dialog,
            backgroundColor: AppColors.amber,
          ),
          RouteButton(
            "图文列表演示",
            RoutePaths.Picture,
            backgroundColor: AppColors.amber,
          ),
          RouteButton(
            "登录案例演示",
            RoutePaths.Login,
            backgroundColor: AppColors.amber,
          ),
          RouteButton(
            "用户信息演示",
            RoutePaths.User,
            backgroundColor: AppColors.amber,
          ),
          RouteButton(
            "Web演示",
            RoutePaths.Web,
            backgroundColor: AppColors.amber,
            onPressed: () {
              RouteManager.jumpToWeb("百度一下", "https://www.baidu.com");
            },
          ),
        ],
      ),
    );
  }
}
