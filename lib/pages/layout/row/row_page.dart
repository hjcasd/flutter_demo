import 'package:flutter/material.dart';
import 'package:flutter_demo/components/app_bar/simple_app_bar.dart';
import 'package:flutter_demo/components/icon_container.dart';
import 'package:flutter_demo/constants/app_colors.dart';

/// Row页面
class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        "Row的使用",
      ),
      body: MyRow(),
    );
  }
}

/// Row: 行组件,水平方向上排列子组件(类似于Linearlayout horizontal)
class MyRow extends StatelessWidget {
  const MyRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        // 水平方向上(主轴)的排列方式
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const <Widget>[
          IconContainer(
            Icons.add,
            backgroundColor: AppColors.amber,
          ),
          IconContainer(
            Icons.ac_unit,
            backgroundColor: AppColors.blue,
          ),
          IconContainer(
            Icons.settings,
            backgroundColor: AppColors.green,
          ),
        ],
      ),
    );
  }
}
