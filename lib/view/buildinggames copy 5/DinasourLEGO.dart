import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class DinasourLEGO extends StatefulWidget {
  const DinasourLEGO({super.key});

  @override
  State<DinasourLEGO> createState() => _DinasourLEGOState();
}

class _DinasourLEGOState extends State<DinasourLEGO> {
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
      name: "Dinasour LEGO",
      describtion:
          "LEGO Creator Mighty Dinosaur Toy 31058, 3 in 1 Model, T. rex, Triceratops and Pterodactyl Dinosaur Figures, Gifts for 7-12 Year Old Boys & Girls.",
      path:
          "https://m.media-amazon.com/images/I/8153mG+qVgL._AC_SL1500_.jpg",
      pr: "11.99",
    );
  }
}
