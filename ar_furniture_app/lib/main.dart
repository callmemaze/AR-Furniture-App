import 'package:ar_furniture_app/binding/authBinding.dart';
import 'package:ar_furniture_app/controller/AuthController.dart';
import 'package:ar_furniture_app/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:ar_furniture_app/screens/wrapper.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.lazyPut(() => AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: AuthBinding(),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.josefinSansTextTheme(
            Theme.of(context).textTheme,
          )),
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
