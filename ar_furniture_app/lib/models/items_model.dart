import 'package:cloud_firestore/cloud_firestore.dart';

class Items_model {
  final String? Name;
  final String? Price;
  final String? Image;
  final String? description;
  Items_model({this.Name, this.Price, this.Image, this.description});

  toJson() {
    return {
      "Name": Name,
      "Price": Price,
      "Image": Image,
      "description": description,
    };
  }

  factory Items_model.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return Items_model(
        Name: data["Name"],
        Price: data["Price"],
        Image: data["Image"],
        description: data["description"]);
  }
}
