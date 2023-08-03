import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class StarWarsLEGO extends StatefulWidget {
  const StarWarsLEGO({super.key});

  @override
  State<StarWarsLEGO> createState() => _StarWarsLEGOState();
}

class _StarWarsLEGOState extends State<StarWarsLEGO> {
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
      name: "Star Wars LEGO",
      describtion:
          "LEGO Star Wars Imperial Shuttle 10212.",
      path:
          "https://m.media-amazon.com/images/I/91UggQjKrhL._AC_SL1500_.jpg",
      pr: "1000",
    );
  }
}
