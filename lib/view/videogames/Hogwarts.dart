import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Hogwarts extends StatefulWidget {
  const Hogwarts({super.key});

  @override
  State<Hogwarts> createState() => _HogwartsState();
}

class _HogwartsState extends State<Hogwarts> {
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
      name: "Hogwarts legacy",
      describtion:
          "Hogwarts Legacy - PlayStation 5 | English | EU Import Region Free.",
      path:
          "https://m.media-amazon.com/images/I/61Kx0rrdSdL._SL1000_.jpg",
      pr: "52",
    );
  }
}
