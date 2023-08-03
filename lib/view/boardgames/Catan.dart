import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Catan extends StatefulWidget {
  const Catan({super.key});

  @override
  State<Catan> createState() => _CatanState();
}

class _CatanState extends State<Catan> {
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
      name: "Catan",
      describtion:
          "Catan Board Game (Base Game) | Family Board Game | Board Game for Adults and Family | Adventure Board Game | Ages 10+ | for 3 to 4 Players | Average Playtime 60 Minutes | Made by Catan Studio.",
      path:
          "https://m.media-amazon.com/images/I/61-k4X6DKPL._AC_.jpg",
      pr: "47",
    );
  }
}
