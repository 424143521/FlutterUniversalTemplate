import 'package:flutter_universal_template/controllers/Index_controller.dart';
import 'package:flutter_universal_template/controllers/login_controller.dart';
import 'package:flutter_universal_template/controllers/message_controller.dart';
import 'package:flutter_universal_template/controllers/user_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../controllers/category_controller.dart';
import '../controllers/tabs_controller.dart';

///可以将路由、状态管理器、依赖管理器集成到一块。
class AllControllerBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut<HomeController>(() => HomeController());//懒加载方式创建实例，只有在使用时才创建
    Get.lazyPut<CategoryController>(() => CategoryController());
    Get.lazyPut<TabsController>(() => TabsController());
    Get.lazyPut<IndexController>(() => IndexController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<MessageController>(() => MessageController());
    Get.lazyPut<UserController>(() => UserController());
  }

}