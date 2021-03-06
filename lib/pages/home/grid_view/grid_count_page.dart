import 'package:flutter/material.dart';
import 'package:flutter_demo/components/app_bar/simple_app_bar.dart';
import 'package:flutter_demo/constants/app_colors.dart';

/// GridView.count实现网格页面
class GridCountPage extends StatelessWidget {
  const GridCountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        "GridView.count实现网格列表",
      ),
      body: MyCountGridView(),
    );
  }
}

class MyCountGridView extends StatelessWidget {
  const MyCountGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // 每行个数
      crossAxisCount: 3,
      // 水平间距
      crossAxisSpacing: 5,
      // 垂直间距
      mainAxisSpacing: 10,
      // 宽高比
      childAspectRatio: 1,
      padding: EdgeInsets.all(10),
      children: _getData(),
    );
  }

  List<Widget> _getData() {
    List<Widget> list = [];
    for (var i = 0; i < 30; i++) {
      list.add(
        Card(
          color: AppColors.blue,
          child: Center(
            child: Text(
              "这是第${i + 1}条数据",
            ),
          ),
        ),
      );
    }
    return list;
  }
}
