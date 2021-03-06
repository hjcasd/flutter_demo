import 'package:flutter/material.dart';
import 'package:flutter_demo/components/app_bar/simple_app_bar.dart';
import 'package:flutter_demo/components/form/form_read_item.dart';

/// Card页面
class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        "Card的使用",
      ),
      body: MyCard(),
    );
  }
}

// Card: 卡片组件
class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      // 阴影
      elevation: 15,
      // 裁剪模式,默认Clip.none
      clipBehavior: Clip.antiAlias,
      // 圆角
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          FormReadItem(
            title: '身份证',
            content: '3101*********244X',
          ),
          FormReadItem(
            title: '身份证',
            content: '3101*********244X',
          ),
        ],
      ),
    );
  }
}
