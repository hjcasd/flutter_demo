import 'package:flutter/material.dart';
import 'package:flutter_demo/components/button/route_button.dart';
import 'package:flutter_demo/routes/route_paths.dart';

/// 首页Tab页面
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            RouteButton(
              "Text",
              RoutePaths.Text,
            ),
            RouteButton(
              "RichText",
              RoutePaths.RichText,
            ),
            RouteButton(
              "Button",
              RoutePaths.Button,
            ),
            RouteButton(
              "Image",
              RoutePaths.Image,
            ),
            RouteButton(
              "Form",
              RoutePaths.Form,
            ),
            RouteButton(
              "ListView",
              RoutePaths.ListView,
            ),
            RouteButton(
              "GridView",
              RoutePaths.GridView,
            ),
            RouteButton(
              "AppBar",
              RoutePaths.AppBar,
            ),
            RouteButton(
              "TabBar",
              RoutePaths.TabBar,
            ),
            RouteButton(
              "Drawer",
              RoutePaths.Drawer,
            ),
          ],
        ),
      ),
    );
  }
}
