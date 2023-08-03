import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class CrashBandicoot extends StatefulWidget {
  const CrashBandicoot({super.key});

  @override
  State<CrashBandicoot> createState() => _CrashBandicootState();
}

class _CrashBandicootState extends State<CrashBandicoot> {
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
      name: "Crash Bandicoot",
      describtion:
          "Crash 4: It's About Time, More playable characters, Alternate Dimensions.",
      path:
          "https://m.media-amazon.com/images/I/81E2XmMOBRL._SL1500_.jpg",
      pr: "35",
    );
  }
}
