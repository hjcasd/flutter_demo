import 'package:flutter/material.dart';
import 'package:flutter_demo/components/app_bar/simple_app_bar.dart';
import 'package:flutter_demo/components/button/route_button.dart';
import 'package:flutter_demo/routes/route_paths.dart';

/// GridView页面
class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        "GridView的使用",
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: const [
            RouteButton(
              "Count网格",
              RoutePaths.GridCount,
            ),
            RouteButton(
              "Builder网格",
              RoutePaths.GridBuilder,
            ),
          ],
        ),
      ),
    );
  }
}
