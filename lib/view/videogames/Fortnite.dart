import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Fortnite extends StatefulWidget {
  const Fortnite({super.key});

  @override
  State<Fortnite> createState() => _FortniteState();
}

class _FortniteState extends State<Fortnite> {
  @override
  Widget build(BuildContext context) {
    return CustomItemPage(
      click: () {
        
      },
      name: "Fortnite",
      describtion:
          "Fortnite Minty Legends Pack - Xbox Series X.",
      path:
          "https://m.media-amazon.com/images/I/71iwCyrKdhL._SL1500_.jpg",
      pr: "32",
    );
  }
}
