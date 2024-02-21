import 'package:ar_furniture_app/controller/auth/usersController.dart';
import 'package:ar_furniture_app/screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserControllers());
    final _key = GlobalKey<FormState>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
              key: _key,
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controller.email,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            labelText: "Email",
                            hintText: "Email",
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: controller.name,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_outline_outlined),
                            labelText: "Name",
                            hintText: "Name",
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: controller.phone,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            labelText: "Phone Number",
                            hintText: "Phone Number",
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: controller.password,
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
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint),
                            labelText: "Confirm Password",
                            hintText: "Confirm Password",
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: null,
                                icon: Icon(Icons.remove_red_eye_sharp))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.black,
                        child: ElevatedButton(
                            onPressed: (() {
                              if (_key.currentState!.validate()) {
                                UserControllers.instance.registerUser(
                                    controller.email.text.trim(),
                                    controller.name.text.trim(),
                                    controller.phone.text.trim(),
                                    controller.password.text.trim());
                              }
                            }),
                            child: const Text(
                              "Signup",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextButton(
                          onPressed: (() => Get.to(() => const LoginScreen())),
                          child: Text.rich(TextSpan(
                              text: "Already have an account?",
                              style: Theme.of(context).textTheme.bodyText1,
                              children: const [
                                TextSpan(
                                    text: "Login",
                                    style: TextStyle(color: Colors.blue))
                              ])))
                    ],
                  )))
        ]),
      )),
    );
  }
}
