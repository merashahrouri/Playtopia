import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class AirplaneLauncher extends StatefulWidget {
  const AirplaneLauncher({super.key});

  @override
  State<AirplaneLauncher> createState() => _AirplaneLauncherState();
}

class _AirplaneLauncherState extends State<AirplaneLauncher> {
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
      name: "Airplane Launcher",
      describtion:
          "Fuwidvia 3 Pack Airplane Launcher Toys, 2 Flight Modes LED Foam Glider Catapult Plane Toy for Boys, Outdoor Flying Toys Birthday Gifts for Boys Girls.",
      path:
          "https://m.media-amazon.com/images/I/71yjVIRfZIL._AC_SL1500_.jpg",
      pr: "15",
    );
  }
}
