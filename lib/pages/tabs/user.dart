import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/user_controller.dart';

class UserPage extends GetView<UserController> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("用户"),
    );
  }
}