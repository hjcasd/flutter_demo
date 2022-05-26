import 'package:flutter/material.dart';
import 'package:flutter_demo/routes/route_manager.dart';

/// Scaffold页面
class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold();
  }
}

/// Scaffold: 页面titleBar和body组件
class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Scaffold的使用",
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            RouteManager.back();
          },
        ),
      ),
      body: Center(
        child: Text(
          "哈哈哈",
        ),
      ),
    );
  }
}
