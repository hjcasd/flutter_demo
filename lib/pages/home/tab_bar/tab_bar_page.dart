import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/app_colors.dart';
import 'package:flutter_demo/routes/route_manager.dart';
import 'package:flutter_demo/utils/log_helper.dart';

/// TabBar页面
class TabBarPage extends StatelessWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyTabBar();
  }
}

/// TabBar: Tab切换组件
class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Tab> _tabList = <Tab>[
    Tab(
      text: 'Android',
    ),
    Tab(
      text: 'IOS',
    ),
    Tab(
      text: 'Flutter',
    ),
    Tab(
      text: 'Python',
    ),
    Tab(
      text: 'Java',
    ),
    Tab(
      text: 'C',
    ),
    Tab(
      text: 'C++',
    ),
    Tab(
      text: 'Go',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabList.length, vsync: this);
    // tab切换监听
    _tabController.addListener(() {
      // 滑动监听调用一次,点击切换调用2次
      if (_tabController.index == _tabController.animation?.value) {
        LogHelper.e("当前索引: ${_tabController.index}");
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TabBar的使用",
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            RouteManager.back();
          },
        ),
        bottom: TabBar(
          /// 指示器颜色
          indicatorColor: AppColors.amber,
          isScrollable: true,
          controller: _tabController,
          tabs: _tabList,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabList.map((Tab tab) {
          return Center(
            child: Text(
              tab.text!,
            ),
          );
        }).toList(),
      ),
    );
  }
}
