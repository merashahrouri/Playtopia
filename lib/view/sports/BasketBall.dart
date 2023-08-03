import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Basketball extends StatefulWidget {
  const Basketball({super.key});

  @override
  State<Basketball> createState() => _BasketballState();
}

class _BasketballState extends State<Basketball> {
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
      name: "Basketball Hoop Stand",
      describtion:
          "MXF Kids Basketball Hoop Stand with Dart Board, Height Adjustable 2.6ft-6.2ft, Portable Mini Basketball Hoop Set with Balls & Darts, 2 in 1 Indoor Outdoor .",
      path:
          "https://m.media-amazon.com/images/I/713YN5G+GdL._AC_SL1500_.jpg",
      pr: "43",
    );
  }
}
