import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/category_controller.dart';
import '../../tools/KeepAliveWrapper.dart';

class CategoryPage extends GetView<CategoryController> {

  CategoryPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx((){
        return KeepAliveWrapper(
          child: Column(
            children: [
              Text("请点击+号"),
              Expanded(
                child: Container(
                  color: Colors.white12,
                  child: ListView(
                    children: controller.list.map((value){
                      return ListTile(title:Text("$value"));
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>{
        controller.add()},
        tooltip: "添加",
        child: const Icon(Icons.add),
      ),
    );
  }
}
