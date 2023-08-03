import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class MagneticTiles extends StatefulWidget {
  const MagneticTiles({super.key});

  @override
  State<MagneticTiles> createState() => _MagneticTilesState();
}

class _MagneticTilesState extends State<MagneticTiles> {
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
      name: "Magnetic Tiles",
      describtion:
          "UREC Magnetic Tiles, Safe and Sturdy Magnet Tiles Magnetic Building Block Toys for Kids Ages 4-8, STEM Stacking Toys for Toddlers 3+, Preschool Sensory Learning Toys - Boys Girls Birthday Gifts.",
      path:
          "https://m.media-amazon.com/images/I/813gt+5Y91L._AC_SL1500_.jpg",
      pr: "46",
    );
  }
}
