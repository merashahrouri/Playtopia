import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class GameDrive extends StatefulWidget {
  const GameDrive({super.key});

  @override
  State<GameDrive> createState() => _GameDriveState();
}

class _GameDriveState extends State<GameDrive> {
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
      name: "2TB Game Drive",
      describtion:
          "WD_BLACK 2TB P10 Game Drive Call of Duty Special Edition: Black Ops Cold War, Portable External Hard Drive HDD, Compatible with Playstation, Xbox, and PC - WDBAZC0020BBK-WESN.",
      path:
          "https://m.media-amazon.com/images/I/61IiM3zqAhL._AC_SL1000_.jpg",
      pr: "79",
    );
  }
}
