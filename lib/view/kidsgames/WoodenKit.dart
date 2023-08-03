import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class WoodenKit extends StatefulWidget {
  const WoodenKit({super.key});

  @override
  State<WoodenKit> createState() => _WoodenKitState();
}

class _WoodenKitState extends State<WoodenKit> {
  @override
  Widget build(BuildContext context) {
    return CustomItemPage(
      click: () {
        
      },
      name: "6-in-1 Wooden Play Kit Montessori Toy",
      describtion:
          "Object Permanence Box, Coin Box, Carrot Harvest, Catch Worm, Shape Sorter - Toddler Learning Toy for Kid Age 1, 2, 3 Year Old, Girl boy Gift for Baby 6-12 Month.",
      path:
          "https://m.media-amazon.com/images/I/71mDz++Hn3L._AC_SL1500_.jpg",
      pr: "34",
    );
  }
}
