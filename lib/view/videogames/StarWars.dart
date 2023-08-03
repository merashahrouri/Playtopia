import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class StarWars extends StatefulWidget {
  const StarWars({super.key});

  @override
  State<StarWars> createState() => _StarWarsState();
}

class _StarWarsState extends State<StarWars> {
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
      name: "Star Wars Jedi",
      describtion:
          "Continue Cal’s Journey - No longer a Padawan, Cal has come into his own and grown into a powerful Jedi Knight. - PlayStation 5.",
      path:
          "https://m.media-amazon.com/images/I/61OlrxlXo0L.jpg",
      pr: "65",
    );
  }
}
