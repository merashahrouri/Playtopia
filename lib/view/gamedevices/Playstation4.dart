import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Playstation4 extends StatefulWidget {
  const Playstation4({super.key});

  @override
  State<Playstation4> createState() => _Playstation4State();
}

class _Playstation4State extends State<Playstation4> {
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
      name: "Playstation 4",
      describtion:
          "RPlay Play-Station 4 PS4 1TB Slim Edition Jet Black With 1 Wireless Controller.",
      path:
          "https://m.media-amazon.com/images/I/61XsKLeku-L._SL1251_.jpg",
      pr: "499",
    );
  }
}
