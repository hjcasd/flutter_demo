import 'package:flutter/material.dart';
import 'package:flutter_demo/components/button/route_button.dart';
import 'package:flutter_demo/constants/app_colors.dart';
import 'package:flutter_demo/routes/route_paths.dart';

/// 布局Tab页面
class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LayoutPageState();
  }
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: const [
          RouteButton(
            "Container",
            RoutePaths.Container,
            backgroundColor: AppColors.green,
          ),
          RouteButton(
            "Padding",
            RoutePaths.Padding,
            backgroundColor: AppColors.green,
          ),
          RouteButton(
            "Row",
            RoutePaths.Row,
            backgroundColor: AppColors.green,
          ),
          RouteButton(
            "Column",
            RoutePaths.Column,
            backgroundColor: AppColors.green,
          ),
          RouteButton(
            "Expanded",
            RoutePaths.Expanded,
            backgroundColor: AppColors.green,
          ),
          RouteButton(
            "Stack",
            RoutePaths.Stack,
            backgroundColor: AppColors.green,
          ),
          RouteButton(
            "Card",
            RoutePaths.Card,
            backgroundColor: AppColors.green,
          ),
          RouteButton(
            "Wrap",
            RoutePaths.Wrap,
            backgroundColor: AppColors.green,
          ),
          RouteButton(
            "Scaffold",
            RoutePaths.Scaffold,
            backgroundColor: AppColors.green,
          ),
        ],
      ),
    );
  }
}
