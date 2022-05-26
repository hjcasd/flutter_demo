import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/app_constants.dart';

/// SimpleCheckbox: 自定义Checkbox组件
class SimpleCheckbox extends StatefulWidget {
  // 是否选中
  final bool value;

  // 是否选中回调
  final ValueChanged<bool> onChanged;

  // 未选中图标路径
  final String normalPath;

  // 选中图标路径
  final String selectedPath;

  // 图标大小
  final double size;

  const SimpleCheckbox({
    required this.value,
    required this.onChanged,
    this.normalPath = "icon_normal.png",
    this.selectedPath = "icon_selected.png",
    this.size = 25,
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SimpleCheckboxState();
  }
}

class _SimpleCheckboxState extends State<SimpleCheckbox> {
  // 选中状态
  bool _isSelected = false;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.value;
  }

  @override
  void didUpdateWidget(covariant SimpleCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    _isSelected = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: _isSelected ? _getImageView(widget.selectedPath) : _getImageView(widget.normalPath),
      ),
      onTap: () {
        _isSelected = !_isSelected;
        widget.onChanged(_isSelected);
      },
    );
  }

  Widget _getImageView(String path) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Image.asset(
        AppConstants.ASSERT_IMAGE_PATH + path,
        fit: BoxFit.fill,
      ),
    );
  }
}
