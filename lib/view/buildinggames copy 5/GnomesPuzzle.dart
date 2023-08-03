import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class GnomesPuzzle extends StatefulWidget {
  const GnomesPuzzle({super.key});

  @override
  State<GnomesPuzzle> createState() => _GnomesPuzzleState();
}

class _GnomesPuzzleState extends State<GnomesPuzzle> {
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
      name: "The Gnomes' Homes Puzzle",
      describtion:
          "The Gnomes' Homes • 1000 Piece Jigsaw Puzzle from The Magic Puzzle Company • Series Three.",
      path:
          "https://m.media-amazon.com/images/I/91dH2I+l68L._AC_SL1500_.jpg",
      pr: "21",
    );
  }
}
