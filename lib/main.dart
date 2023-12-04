import 'package:flutter/material.dart';
import 'package:flutter_universal_template/pages/login_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:flutter_universal_template/routers/routers.dart';

import 'binding/binding.dart';
import 'launch/index_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:IndexPage() ,
      // home 和 initialRoute同时存在的话initialRoute会优先生效
      initialRoute: RouteGet.indexPage,//默认显示的路由页面

      ///GetX配置
      getPages: RouteGet.routes,//getX路由管理
      defaultTransition: Transition.leftToRight, // 设置所有页面默认的路由跳转动画
      initialBinding: AllControllerBinding(), //全局绑定GetxController
      //全局中间件
      /* routingCallback: (routing) {
        if(routing.current == '/user') {
          openAds();
        }
      },*/
      //404页面
      // unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
    );
  }
}
