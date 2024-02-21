import 'package:ar_furniture_app/controller/items/ItemsController.dart';
import 'package:ar_furniture_app/models/items_model.dart';
import 'package:get/get.dart';

class ItemController extends GetxController {
  static ItemController get instance => Get.find();
  final _item = Get.put(ItemsController());

  Future<List<Items_model>> getData() async {
    return await _item.getItems();
  }
}
