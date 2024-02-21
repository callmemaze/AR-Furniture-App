import 'package:ar_furniture_app/controller/AuthController.dart';
import 'package:ar_furniture_app/controller/auth/usersController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Align(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            UserControllers.instance.logout();
          },
          child: Text("Logout"),
        ),
      )),
    );
  }
}
