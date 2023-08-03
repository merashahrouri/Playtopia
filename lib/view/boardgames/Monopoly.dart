import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Monopoly extends StatefulWidget {
  const Monopoly({super.key});

  @override
  State<Monopoly> createState() => _MonopolyState();
}

class _MonopolyState extends State<Monopoly> {
  @override
  Widget build(BuildContext context) {
    return CustomItemPage(
      click: () {
        
      },
      name: "Monopoly game of thrones",
      describtion:
          "BASED ON THE HIT TV SERIES FROM HBO: Game of Thrones fans can travel the legendary lands of Westeros as you buy, sell, and trade locations from the Seven Kingdoms in this edition of the Monopoly game.",
      path:
          "https://m.media-amazon.com/images/I/91JCne9fbUL._AC_SL1500_.jpg",
      pr: "35",
    );
  }
}
