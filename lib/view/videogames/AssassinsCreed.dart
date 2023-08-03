import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class AssassinsCreed extends StatefulWidget {
  const AssassinsCreed({super.key});

  @override
  State<AssassinsCreed> createState() => _AssassinsCreedState();
}

class _AssassinsCreedState extends State<AssassinsCreed> {
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
      name: "Assassins Creed Mirage",
      describtion:
          "ASSASSIN'S CREED MIRAGE - DELUXE EDITION, PLAYSTATION 5.",
      path:
          "https://m.media-amazon.com/images/I/81AP5yA1beL._SL1500_.jpg",
      pr: "47",
    );
  }
}
