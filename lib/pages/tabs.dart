import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/tabs_controller.dart';
import './tabs/home.dart';
import 'tabs/category.dart';
import 'tabs/message.dart';
import 'tabs/user.dart';


class TabsPage extends GetView<TabsController> {

  final List<Widget> _pages =  [
    HomePage(),
    CategoryPage(),
    MessagePage(),
    UserPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),//设置appbar的高度
        child: AppBar(
          elevation: 1,
          backgroundColor: Colors.lightBlueAccent,
          title: const Text("Flutter App")
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children:  [
                Expanded(
                    flex: 1,
                    child: UserAccountsDrawerHeader(
                      accountName: const Text("itying"),
                      accountEmail: const Text("itying@qq.com"),
                      otherAccountsPictures:[
                        Image.network("https://www.itying.com/images/flutter/1.png"),
                           Image.network("https://www.itying.com/images/flutter/2.png"),
                           Image.network("https://www.itying.com/images/flutter/3.png"),
                      ],
                      currentAccountPicture:const CircleAvatar(
                        backgroundImage:NetworkImage("https://www.itying.com/images/flutter/3.png")
                      ),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://www.itying.com/images/flutter/2.png"))),
                    ))
              ],
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("个人中心"),
            ),
            const Divider(),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("系统设置"),
            ),
            const Divider(),
          ],
        ),
      ),
     
      body:  Obx((){
        return _pages[(controller.counter).value];
      }),
      

      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.red, //选中的颜色
          // iconSize:35,           //底部菜单大小
          currentIndex: (controller.counter).value, //第几个菜单选中
          type: BottomNavigationBarType.fixed, //如果底部有4个或者4个以上的菜单的时候就需要配置这个参数
          onTap: (index) {
            //点击菜单触发的方法
            //注意
            (controller.counter).value = index;
            print(  "结果${(controller.counter).value}");
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "探索"),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "消息"),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "我的")
          ]),

      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, //配置浮动按钮的位置
    );
  }
}
