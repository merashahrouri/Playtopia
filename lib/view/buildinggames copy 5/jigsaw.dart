import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class JigsawPuzzle extends StatefulWidget {
  const JigsawPuzzle({super.key});

  @override
  State<JigsawPuzzle> createState() => _JigsawPuzzleState();
}

class _JigsawPuzzleState extends State<JigsawPuzzle> {
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
      name: "Jigsaw Puzzle",
      describtion:
          "Buffalo Games - Days to Remember - Country Road - 500 Piece Jigsaw Puzzle Multicolor, 21.25L X 15W.",
      path:
          "https://m.media-amazon.com/images/I/91wwDYIXNQL._AC_SL1500_.jpg",
      pr: "21",
    );
  }
}
