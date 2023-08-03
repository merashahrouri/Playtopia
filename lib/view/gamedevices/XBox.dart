import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class XBox extends StatefulWidget {
  const XBox({super.key});

  @override
  State<XBox> createState() => _XBoxState();
}

class _XBoxState extends State<XBox> {
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
      name: "XBox",
      describtion:
          "XBOX SERIES X: The fastest, most powerful Xbox ever. Explore rich new worlds with 12 teraflops of raw graphic processing power, DirectX ray tracing, a custom SSD, and 4K gaming.",
      path:
          "https://m.media-amazon.com/images/I/51ojzJk77qL._SL1500_.jpg",
      pr: "300",
    );
  }
}
