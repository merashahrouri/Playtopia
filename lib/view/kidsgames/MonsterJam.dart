import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class MonsterJam extends StatefulWidget {
  const MonsterJam({super.key});

  @override
  State<MonsterJam> createState() => _MonsterJamState();
}

class _MonsterJamState extends State<MonsterJam> {
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
      name: "Remote Control Monster jam",
      describtion:
          "MaxTronic Remote Control Car Amphibious, 2.4 GHz 4WD 1:14 Scale All-Terrain Waterproof Remote Control Monster Truck, RC Boat Shark Car Toys for 3-12 Years Old Boys Girls.",
      path:
          "https://m.media-amazon.com/images/I/819VvY5AhWL._AC_SL1500_.jpg",
      pr: "54",
    );
  }
}
