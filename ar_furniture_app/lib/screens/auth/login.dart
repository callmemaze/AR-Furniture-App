import 'package:ar_furniture_app/controller/auth/usersController.dart';
import 'package:ar_furniture_app/screens/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserControllers());
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image(
            image: const AssetImage("assets/images/login.png"),
            height: size.height * 0.3,
          ),
          Text(
            "Welcome Back,",
            style: Theme.of(context).textTheme.headline6,
          ),
          Form(
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_outline_outlined),
                            labelText: "Email",
                            hintText: "Email",
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint),
                            labelText: "Password",
                            hintText: "Password",
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: null,
                                icon: Icon(Icons.remove_red_eye_sharp))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: null,
                          child: Text("Forget Password?"),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (() => {
                                  UserControllers.instance.loginUser(
                                      controller.email.text.trim(),
                                      controller.password.text.trim())
                                }),
                            child: const Text("LOGIN")),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("OR"),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton.icon(
                                onPressed: null,
                                icon: const Icon(Icons.account_box),
                                label: const Text("Sign In with Google")),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: (() => Get.to(() => const SignupScreen())),
                          child: Text.rich(TextSpan(
                              text: "Dont have an account?",
                              style: Theme.of(context).textTheme.bodyText1,
                              children: const [
                                TextSpan(
                                    text: "Register",
                                    style: TextStyle(color: Colors.blue))
                              ])))
                    ],
                  )))
        ]),
      )),
    ));
  }
}
