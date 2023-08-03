import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Sorry extends StatefulWidget {
  const Sorry({super.key});

  @override
  State<Sorry> createState() => _SorryState();
}

class _SorryState extends State<Sorry> {
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
      name: "Sorry!",
      describtion:
          "Ditch the TV, and re ignite family night with the get together amusement of a Hasbro game.",
      path:
          "https://m.media-amazon.com/images/I/81CA3GV9sXL._AC_SL1500_.jpg",
      pr: "12",
    );
  }
}
