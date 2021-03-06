import 'package:flutter/material.dart';
import 'package:flutter_demo/components/app_bar/simple_app_bar.dart';
import 'package:flutter_demo/constants/app_constants.dart';

/// 动态列表页面
class ListDynamicPage extends StatelessWidget {
  const ListDynamicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        "动态列表",
      ),
      body: MyDynamicListView(),
    );
  }
}

class MyDynamicListView extends StatelessWidget {
  final List<String> list = [];

  MyDynamicListView({Key? key}) : super(key: key) {
    for (var i = 0; i < 20; i++) {
      list.add("我是标题${i + 1}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // 列表方向
      scrollDirection: Axis.vertical,
      // 列表个数
      itemCount: list.length,
      // 子Item
      itemBuilder: (context, index) {
        return ImageItem(list[index]);
      },
    );
  }
}

/// 列表Item
class ImageItem extends StatelessWidget {
  final String _title;

  const ImageItem(this._title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FadeInImage.assetNetwork(
          placeholder: "${AppConstants.ASSERT_IMAGE_PATH}icon_test.png",
          image: "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2447126270,3019349612&fm=26&gp=0.jpg",
          fit: BoxFit.cover,
        ),
        Container(
          child: Text(
            _title,
            textAlign: TextAlign.center,
          ),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
      ],
    );
  }
}
