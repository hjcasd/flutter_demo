import 'package:flutter/material.dart';
import 'package:flutter_demo/components/app_bar/simple_app_bar.dart';
import 'package:flutter_demo/components/button/route_button.dart';
import 'package:flutter_demo/routes/route_paths.dart';

/// ListView页面
class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        "ListView的使用",
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: const [
            RouteButton(
              "静态列表",
              RoutePaths.ListStatic,
            ),
            RouteButton(
              "动态列表",
              RoutePaths.ListDynamic,
            ),
          ],
        ),
      ),
    );
  }
}
