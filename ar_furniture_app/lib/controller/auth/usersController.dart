import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ar_furniture_app/controller/AuthController.dart';

class UserControllers extends GetxController {
  static UserControllers get instance => Get.find();

  final email = TextEditingController();
  final name = TextEditingController();
  final phone = TextEditingController();
  final password = TextEditingController();

  void registerUser(String email, name, phone, password) {
    Get.put(AuthController.instance
        .createUserWithEmailAndPassword(email, password, phone, name));
  }

  void loginUser(String email, password) {
    Get.put(AuthController.instance
        .signInUserWithEmailAndPassword(email, password));
  }

  void logout() {
    Get.put(AuthController.instance.signOut());
  }
}
