import '../pages/login_page.dart';
import 'package:get/get.dart';
import '../launch/index_page.dart';
import '../pages/tabs.dart';

class RouteGet {
  //测试 响应式刷新计数page
  static const String counter = "/counter";

  // 开屏页
  static const String indexPage = "/index";

  static final routes = [
    GetPage(name: "/taps", page: () =>  TabsPage()),
    GetPage(name: "/index", page: () =>  IndexPage()),
    GetPage(name: "/login", page: () =>  LoginPage()),
  /*  GetPage(
        name: "/login",
        page: () => LoginPage(),
        // binding: ShopControllerBinding(),
        transition: Transition.leftToRight, //每个page可以自定义动画
        middlewares: [Route_MiddleWare()]//中间件配置，用户有权限登陆跳转登陆页面，没权限登陆跳转注册页面
      *//* binding: BindingsBuilder(() { // 一种更加方便的写法
          Get.put(HomeController());
        }),*//*),*/
  ];
}
