import 'package:flutter/material.dart';
import 'package:flutter_demo/components/app_bar/simple_app_bar.dart';
import 'package:flutter_demo/constants/app_colors.dart';

/// Stack + Align页面
class StackAlignPage extends StatelessWidget {
  const StackAlignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        "Stack + Align",
      ),
      body: MyStackAlign(),
    );
  }
}

/// Stack + Align 实现定位布局
class MyStackAlign extends StatelessWidget {
  const MyStackAlign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: AppColors.green,
      child: Stack(
        children: const <Widget>[
          Align(
            alignment: Alignment(-0.5, -1),
            child: Text(
              "111",
            ),
          ),
          Align(
            alignment: Alignment(0.5, -1),
            child: Text(
              "222",
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "333",
            ),
          ),
          Align(
            alignment: Alignment(-0.5, 1),
            child: Text(
              "444",
            ),
          ),
          Align(
            alignment: Alignment(0.5, 1),
            child: Text(
              "555",
            ),
          ),
        ],
      ),
    );
  }
}
