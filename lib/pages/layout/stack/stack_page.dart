import 'package:flutter/material.dart';
import 'package:flutter_demo/components/app_bar/simple_app_bar.dart';
import 'package:flutter_demo/components/button/route_button.dart';
import 'package:flutter_demo/constants/app_colors.dart';
import 'package:flutter_demo/routes/route_paths.dart';

/// Stack + Align + Positioned页面
class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        "Stack的使用",
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: const [
            RouteButton(
              "Stack + Positioned",
              RoutePaths.StackPositioned,
            ),
            RouteButton(
              "Stack + Align",
              RoutePaths.StackAlign,
            ),
            MyStack(),
          ],
        ),
      ),
    );
  }
}

/// Stack: 堆叠组件(类似于FrameLayout)
class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0, 0),
      children: <Widget>[
        Container(
          height: 160,
          width: 160,
          color: AppColors.green,
        ),
        Container(
          height: 140,
          width: 140,
          color: AppColors.amber,
        ),
        Container(
          height: 120,
          width: 120,
          color: AppColors.blue,
        ),
        Text(
          "哈哈哈哈",
        ),
      ],
    );
  }
}
