import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class GripIt extends StatefulWidget {
  const GripIt({super.key});

  @override
  State<GripIt> createState() => _GripItState();
}

class _GripItState extends State<GripIt> {
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
      name: "Grip It Football",
      describtion:
          "Wave Runner Grip It Waterproof Football- Size 9.25 Inches with Sure-Grip Technology | Let's Play Football in The Water!.",
      path:
          "https://m.media-amazon.com/images/I/818orikGM9L._AC_SL1500_.jpg",
      pr: "14",
    );
  }
}
