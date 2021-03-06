import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/app_colors.dart';

/// IconContainer: 带图标的容器组件
class IconContainer extends StatelessWidget {
  // 图标
  final IconData iconData;

  // 背景颜色
  final Color backgroundColor;

  // 图标大小
  final double iconSize;

  const IconContainer(
    this.iconData, {
    this.backgroundColor = AppColors.blue,
    this.iconSize = 32,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: backgroundColor,
      child: Center(
        child: Icon(
          iconData,
          size: iconSize,
          color: AppColors.white,
        ),
      ),
    );
  }
}
