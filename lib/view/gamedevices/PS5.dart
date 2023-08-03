import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Playstation5 extends StatefulWidget {
  const Playstation5({super.key});

  @override
  State<Playstation5> createState() => _Playstation5State();
}

class _Playstation5State extends State<Playstation5> {
  @override
  Widget build(BuildContext context) {
    return CustomItemPage(
      click: () {
        var snackBar = SnackBar(
                content: Text(
                  "Item added to cart",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Color.fromARGB(255, 178, 168, 210),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.pop(context);
      },
      name: "Playstation 5",
      describtion:
          "PlayStation 5 Console (PS5), Lightning Speed - Harness the power of a custom CPU, GPU, and SSD with Integrated I/O that rewrite the rules of what a PlayStation console can do..",
      path:
          "https://m.media-amazon.com/images/I/51eOztNdCkL._SL1500_.jpg",
      pr: "600",
    );
  }
}
