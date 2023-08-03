import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Azul extends StatefulWidget {
  const Azul({super.key});

  @override
  State<Azul> createState() => _AzulState();
}

class _AzulState extends State<Azul> {
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
      name: "Azul",
      describtion:
          "Azul Stained Glass of Sintra Board Game | Strategy Board Game | Family Board Game for Kids and Adults | Ages 8 and up | 2 to 4 Players | Average Playtime 30-45 Minutes | Made by Next Move Games.",
      path:
          "https://m.media-amazon.com/images/I/91dkcWFZr6S._AC_SL1500_.jpg",
      pr: "33",
    );
  }
}
