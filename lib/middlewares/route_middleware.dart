import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

//路由中间件
class Route_MiddleWare extends GetMiddleware{
  //重写重定向
  redirect(route){
    String hasLogin = Get.arguments?['power'];
    if(hasLogin == 'no'){
      Get.snackbar("提示", "请先进行登录");
      return const RouteSettings(name: 'login');
    }
    //放行，跳转到目标路由
    return null;
  }
}