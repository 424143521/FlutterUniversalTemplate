import 'package:get/get.dart';

class LoginController extends GetxController{
  int count = 0;

  RxList list=[].obs;

  void add(){
    list.add("我是第$count个item");
    update();
  }

}