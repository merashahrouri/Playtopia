import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Twister extends StatefulWidget {
  const Twister({super.key});

  @override
  State<Twister> createState() => _TwisterState();
}

class _TwisterState extends State<Twister> {
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
      name: "Hasbro Twister Splash",
      describtion:
          "THE CLASSIC TWISTER GAME. WITH A SPLASHTASTIC TWIST! Who doesn’t remember playing Twister as a kid? The same classic gameplay that has been tying players up in knots for generations now comes as an outdoor water game for hours of summer fun!",
      path:
          "https://m.media-amazon.com/images/I/71Ey5Ff0ETL._AC_SL1100_.jpg",
      pr: "16",
    );
  }
}
