import 'package:flutter/material.dart';
import 'package:flutter_demo/components/app_bar/simple_app_bar.dart';
import 'package:flutter_demo/constants/app_colors.dart';

/// Stack + Positioned页面
class StackPositionedPage extends StatelessWidget {
  const StackPositionedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        "Stack + Positioned",
      ),
      body: MyStackPositioned(),
    );
  }
}

/// Stack + Positioned 实现定位布局
class MyStackPositioned extends StatelessWidget {
  const MyStackPositioned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              color: AppColors.green,
            ),
          ),
          Positioned(
            left: 10,
            right: 20,
            top: 100,
            bottom: 0,
            child: Container(
              color: AppColors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
