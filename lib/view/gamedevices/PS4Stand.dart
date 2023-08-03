import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class PS4Stand extends StatefulWidget {
  const PS4Stand({super.key});

  @override
  State<PS4Stand> createState() => _PS4StandState();
}

class _PS4StandState extends State<PS4Stand> {
  @override
  Widget build(BuildContext context) {
    return CustomItemPage(
      click: () {
        
      },
      name: "PS4 Stand",
      describtion:
          "OIVO PS4 Stand Cooling Fan Station for Playstation 4/PS4 Slim/PS4 Pro, PS4 Pro Vertical Stand with Dual Controller EXT Port Charger Dock Station and 12 Game Slots.",
      path:
          "https://m.media-amazon.com/images/I/71RUdRZUZEL._AC_SL1200_.jpg",
      pr: "35",
    );
  }
}
