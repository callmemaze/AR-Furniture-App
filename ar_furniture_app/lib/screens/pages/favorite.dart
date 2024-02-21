import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreen();
}

class _FavoriteScreen extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Fav"),
    );
  }
}
