import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Nintendo extends StatefulWidget {
  const Nintendo({super.key});

  @override
  State<Nintendo> createState() => _NintendoState();
}

class _NintendoState extends State<Nintendo> {
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
      name: "Nintendo Switch",
      describtion:
          "Nintendo Switch with Neon Blue and Neon Red Joy‑Con.",
      path:
          "https://m.media-amazon.com/images/I/61-PblYntsL._AC_SL1500_.jpg",
      pr: "299",
    );
  }
}
