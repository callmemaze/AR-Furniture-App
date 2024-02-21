import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var list = [
    {"name": "New In", "image": "assets/images/newIna.png"},
    {"name": "Furniture", "image": "assets/images/sofac.png"},
    {"name": "Lighting", "image": "assets/images/lighta.png"},
    {"name": "Bedroom", "image": "assets/images/beda.png"},
    {"name": "Items", "image": "assets/images/sofaa.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            backgroundColor: Colors.grey[100],
            elevation: 0.0,
            centerTitle: false,
            title: const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Search",
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
              child: Row(
                children: [
                  const Flexible(
                      child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide.none),
                        hintText: "Search you items",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 25,
                        )),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(10)),
                      ),
                      onPressed: null,
                      child: const Icon(
                        Icons.filter_alt,
                        size: 30,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: ListView.builder(
                  itemCount: list.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        height: 125,
                        child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Card(
                                elevation: 0.0,
                                color: Colors.blueGrey.shade50,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(15.0),
                                        child: Text(
                                          list[index]["name"].toString(),
                                          style: const TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        height: 150,
                                        child: Image(
                                            fit: BoxFit.cover,
                                            image: AssetImage(list[index]
                                                    ["image"]
                                                .toString())),
                                      )
                                    ]))));
                  },
                ),
              ),
            )
          ]),
        ));
  }
}
