import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Darb extends StatefulWidget {
  const Darb({super.key});

  @override
  State<Darb> createState() => _DarbState();
}

class _DarbState extends State<Darb> {
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
      name: "Darb",
      describtion:
          "Darb or Pathway may seem like any other game, but in fact, it’s much more! This board game is a great opportunity to strengthen your relationship with family and friends on one side and create unforgettable memories on the other side! Darb board game is available in English & Arabic. It refreshes and tests your knowledge and skills in a competitive fun atmosphere.",
      path:
          "https://noorart.com/cdn/shop/products/GDBG.jpg?v=1660574386&width=360",
      pr: "25",
    );
  }
}
