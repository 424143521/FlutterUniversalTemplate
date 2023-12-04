import 'package:get/get.dart';
//配置全局关于是否进去加载页面还是登陆页面
class MiddleWare {
  static observer(Routing routing) {
    if (routing.current == '/second' && !routing.isBottomSheet!) {
      Get.snackbar("Hi", "You are on second route");
    } else if (routing.current =='/third'){
      print('last route called');
    }
  }
}
