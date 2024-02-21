import 'package:ar_furniture_app/screens/pages/ar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (() => Get.to(() => const ARScreen())),
                  child: Text("AR"))
            ]),
      ),
    );
  }
}
