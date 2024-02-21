import 'package:flutter/material.dart';

class SecondOnBoardingScreen extends StatelessWidget {
  const SecondOnBoardingScreen({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40.0),
      color: const Color(0xff242320),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Discover our",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                Text("New",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                Text("Products....",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Latest collection with premium quality, minimalist and limited adition with AR experience",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage("assets/images/onboarding-image-1.png"),
                height: size.height * 0.4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
