import 'package:ar_furniture_app/controller/ItemController.dart';
import 'package:ar_furniture_app/models/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  var list = [
    {"name": "Furniture", "image": const Icon(Icons.chair)},
    {"name": "Bed", "image": const Icon(Icons.bed)},
    {"name": "Lighting", "image": const Icon(Icons.light)},
    {"name": "Lighting", "image": const Icon(Icons.light)},
    {"name": "Lighting", "image": const Icon(Icons.light)},
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ItemController());
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            backgroundColor: Colors.grey[100],
            elevation: 0.0,
            centerTitle: false,
            title: const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Home",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            )),
        body: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            Container(
              height: 120,
              child: Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                    itemCount: list.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blueGrey.shade50,
                              ),
                              child: list[index]["image"] as Widget,
                            ),
                          ),
                          Text(
                            list[index]["name"].toString(),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                              color: Colors.black,
                            ),
                          )
                        ],
                      );
                    }),
              )),
            ),
            Container(
                child: FutureBuilder<List<Items_model>>(
              future: controller.getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 200,
                                  height: 250,
                                  color: Colors.blueGrey.shade50,
                                  child: Container(
                                    child: Card(
                                        elevation: 0.0,
                                        color: Colors.blueGrey.shade50,
                                        shape: BeveledRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              child: Image(
                                                  image: AssetImage(
                                                      " ${snapshot.data![index].Image}")),
                                            ),
                                            Text(
                                              snapshot.data![index].Name
                                                  .toString(),
                                              style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w100,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              snapshot.data![index].Price
                                                  .toString(),
                                              style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            const Text(
                                              "200",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w100,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                ),
                              )
                            ],
                          );
                        });
                  } else {
                    return const Center(
                      child: Text("Something went wrong"),
                    );
                  }
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )),
          ]),
        ));
  }
}
