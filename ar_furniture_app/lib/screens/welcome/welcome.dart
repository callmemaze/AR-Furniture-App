import 'package:ar_furniture_app/screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/route_manager.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff242320),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image(
            image: const AssetImage("assets/images/welcome.gif"),
            height: size.height * 0.4,
          ),
          const Text(
            "Welcome To AR Furniture App,",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const Text(
            "Latest collection with premium quality, minimalist and limited adition with AR experience. Latest collection with premium quality, minimalist and limited adition with AR experience",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                    onPressed: (() => Get.to(() => const LoginScreen())),
                    style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        side: const BorderSide(color: Colors.white)),
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          side: const BorderSide(color: Colors.white)),
                      child: const Text(
                        "SIGNUP",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )))
            ],
          )
        ]),
      ),
    );
  }
}
