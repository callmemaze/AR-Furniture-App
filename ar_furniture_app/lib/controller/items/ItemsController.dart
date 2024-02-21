import 'package:ar_furniture_app/models/items_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ItemsController extends GetxController {
  static ItemsController get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  Future<List<Items_model>> getItems() async {
    final snapshot = await _db.collection("Items").get();
    final data = snapshot.docs.map((e) => Items_model.fromSnapshot(e)).toList();

    return data;
  }
}
