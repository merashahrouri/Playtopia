import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class MoonPuzzle extends StatefulWidget {
  const MoonPuzzle({super.key});

  @override
  State<MoonPuzzle> createState() => _MoonPuzzleState();
}

class _MoonPuzzleState extends State<MoonPuzzle> {
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
      name: "Moon Puzzle",
      describtion:
          "MaxRenard Game 1000 Pieces Jigsaw Puzzle Round Puzzle Toy The Moon.",
      path:
          "https://m.media-amazon.com/images/I/71cYlRXSB-L._AC_SL1000_.jpg",
      pr: "33",
    );
  }
}
