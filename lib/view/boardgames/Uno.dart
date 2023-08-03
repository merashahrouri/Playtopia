import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Uno extends StatefulWidget {
  const Uno({super.key});

  @override
  State<Uno> createState() => _UnoState();
}

class _UnoState extends State<Uno> {
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
      name: "Uno",
      describtion:
          "UNO - Classic Colour & Number Matching Card Game - 112 Cards - Customizable & Erasable Wild - Special Action Cards Included .",
      path:
          "https://m.media-amazon.com/images/I/81LcVsRKnjS._AC_SL1500_.jpg",
      pr: "10",
    );
  }
}
