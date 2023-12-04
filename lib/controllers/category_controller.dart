import 'package:get/get.dart';

class CategoryController extends GetxController{
  int count = 0;

  RxList list=[].obs;

    void add(){
      list.add("我是第${count++}个item");
      update();
    }
   
}