import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class WoodenPuzzle extends StatefulWidget {
  const WoodenPuzzle({super.key});

  @override
  State<WoodenPuzzle> createState() => _WoodenPuzzleState();
}

class _WoodenPuzzleState extends State<WoodenPuzzle> {
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
      name: "Wooden Puzzle",
      describtion:
          "Mys Aurora Wooden Jigsaw Puzzle, Seahorse 300 Pcs, Unique Shape, King Size 11.4''x17.9'', Wood Gift Box Packing, Creative Gift for Adults, Fun Challenging, Surprising Gift for Parents Grandparents.",
      path:
          "https://m.media-amazon.com/images/I/91z2p8kJp-L._AC_SL1500_.jpg",
      pr: "23",
    );
  }
}
