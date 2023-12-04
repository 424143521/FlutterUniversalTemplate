import 'package:flutter/material.dart';
import 'package:flutter_universal_template/controllers/message_controller.dart';
import 'package:get/get.dart';

class MessagePage extends GetView<MessageController> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("消息组件"),
    );
  }
}