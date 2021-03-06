import 'package:flutter/material.dart';
import 'package:flutter_demo/components/app_bar/simple_app_bar.dart';
import 'package:flutter_demo/constants/app_constants.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

/// swiper
class SwiperPage extends StatelessWidget {
  const SwiperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        "Swiper的使用",
      ),
      body: MySwiper(),
    );
  }
}

class MySwiper extends StatefulWidget {
  const MySwiper({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MySwiperState();
}

/// 轮播图组件Swiper演示
class _MySwiperState extends State<MySwiper> {
  final List<Map> _imgList = [
    {
      "url": "http://pic1.win4000.com/wallpaper/b/58ca58d35d719.jpg",
    },
    {
      "url": "http://pic1.win4000.com/wallpaper/5/58d1e4522374c.jpg",
    },
    {
      "url": "http://pic1.win4000.com/wallpaper/5/58d21cc8f12c9.jpg",
    },
    {
      "url": "http://pic1.win4000.com/wallpaper/3/58d0c78e390e5.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Swiper(
          itemCount: _imgList.length,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage.assetNetwork(
              image: _imgList[index]["url"],
              placeholder: "${AppConstants.ASSERT_IMAGE_PATH}img_default.png",
              fit: BoxFit.fill,
            );
          },
          pagination: SwiperPagination(),
          controller: SwiperController(),
          autoplay: true,
        ),
      ),
    );
  }
}
