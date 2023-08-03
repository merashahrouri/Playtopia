import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Fifa extends StatefulWidget {
  const Fifa({super.key});

  @override
  State<Fifa> createState() => _FifaState();
}

class _FifaState extends State<Fifa> {
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
      name: "Fifa 23",
      describtion:
          "FIFA 23 Standard Edition Playstation 5 (PS5)| English | Import Region Free.",
      path:
          "https://m.media-amazon.com/images/I/81oyZ8TDDfL._SL1500_.jpg",
      pr: "43",
    );
  }
}
