import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class TheLastOfUs extends StatefulWidget {
  const TheLastOfUs({super.key});

  @override
  State<TheLastOfUs> createState() => _TheLastOfUsState();
}

class _TheLastOfUsState extends State<TheLastOfUs> {
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
      name: "The Last of Us Part I – PlayStation 5",
      describtion:
          "Enhanced visuals: Completely rebuilt from the ground up using Naughty Dog’s latest PS5 engine technology to improve every visual detail, The Last of Us experience has been faithfully enhanced with more realistic lighting and atmosphere, more intricate environments and creative reimaginings of familiar spaces.",
      path:
          "https://m.media-amazon.com/images/I/81l41iKPF3L._SL1500_.jpg",
      pr: "40",
    );
  }
}
