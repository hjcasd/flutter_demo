import 'package:flutter/material.dart';
import 'package:flutter_demo/components/app_bar/simple_app_bar.dart';
import 'package:flutter_demo/components/icon_container.dart';
import 'package:flutter_demo/constants/app_colors.dart';

/// Column页面
class ColumnPage extends StatelessWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        "Column的使用",
      ),
      body: MyColumn(),
    );
  }
}

/// Column: 列组件,垂直方向上排列子组件(类似于Linearlayout vertical)
class MyColumn extends StatelessWidget {
  const MyColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // 垂直方向上(主轴)的排列方式
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
    );
  }
}
