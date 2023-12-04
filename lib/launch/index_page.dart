import 'package:flutter/material.dart';
import 'package:flutter_universal_template/controllers/Index_controller.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';

// 预留广告位
//应用程序启动页面

//启动页面
//本地数据缓存
class IndexPage extends GetView<IndexController> {

  //异步读取数据
  void readCacheData() async {
    //读取本地数据缓存
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    //判断是否第一次使用
    final bool? isFirst = prefs.getBool('flutter_is_first');

    if (isFirst == null || isFirst == false) {
      //第一次使用
      //去引导页面、保存使用标识
      await prefs.setBool('flutter_is_first', true);
    } else {
      //显示倒计时
    }
    print("读取缓存数据 $isFirst");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
          image: AssetImage('images/2.0x/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Image.asset(
            "images/2.0x/background.png",
            fit: BoxFit.fitHeight,
          ),
          Positioned(
              top: 20,
              right: 10,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.white;
                      return Colors.blue; // Use the component's default.
                    },
                  ),
                ),
                onPressed: () {
                  Get.toNamed("/login");
                },
                child: const Text(
                  '跳过',
                  style: TextStyle(color: Colors.white),
                ),
              )),
          const Positioned(
              child: Center(
                  child: SizedBox(
            width: 50,
            height: 50,
            child: CircularProgressIndicator(), //圆形进度条
          ))),
        ],
      ),
    ));
  }
}
