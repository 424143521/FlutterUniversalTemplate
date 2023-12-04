import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../controllers/login_controller.dart';


class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    final email = TextFormField(
      //用户名
      keyboardType: TextInputType.emailAddress,
      autofocus: false, //是否自动对焦
      decoration: InputDecoration(
          hintText: '请输入用户名',
          //提示内容
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          //提示内容的上下左右边距设置
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0) //设置圆角大小
              )),
    );

    final password = TextFormField(
      //密码
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
          hintText: '请输入密码',
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final loginButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0), //上下各添加16像素补白
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        // 圆角度
        shadowColor: Colors.lightBlueAccent.shade100,
        //阴影颜色
        elevation: 5.0,
        //浮动的距离
        color: Colors.green,
        child: MaterialButton(
          onPressed: () {
            Get.toNamed("/taps");
          },
          child: const Text(
            '登 录',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
    );

    final signup = TextButton(
      //扁平化的按钮，前面博主已经讲解过
      child: const Text(
        '注册',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 14.0,
          decoration: TextDecoration.underline,
        ),
      ),
      onPressed: () {},
    );

    final forgotLabel = TextButton(
      //扁平化的按钮，前面博主已经讲解过
      child: const Text(
        '忘记密码',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 14.0,
          decoration: TextDecoration.underline,
        ),
      ),
      onPressed: () {},
    );
    double screenWidth = MediaQuery.of(context).size.width; //获取屏幕宽度
    double margin = screenWidth * 0.05; // 设置为屏幕宽度的0.05%

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          //这是用于装饰Container的代码，你可以在这里设置背景图片，边框等。
          image: DecorationImage(
            image: AssetImage("images/2.0x/background2.png"), //替换为你的图片路径
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: margin), //设置左右外边距
            decoration: BoxDecoration(
              color: Colors.white, //设置背景颜色为白色
              borderRadius: BorderRadius.circular(10.0), //设置圆角
            ),
            child: Wrap(
              children: [
                ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(24.0),
                  children: [
                    email,
                    const SizedBox(
                      height: 10.0,
                    ),
                    password,
                    const SizedBox(
                      height: 10.0,
                    ),
                    loginButton,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //表示子组件在主轴方向上均匀分布，也就是在第一个组件和最后一个组件之间的空间均匀分布。
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: signup,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: forgotLabel,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
