import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Uncharted extends StatefulWidget {
  const Uncharted({super.key});

  @override
  State<Uncharted> createState() => _UnchartedState();
}

class _UnchartedState extends State<Uncharted> {
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
      name: "Uncharted 4",
      describtion:
          "Uncharted 4: A Thief's End (Sony PlayStation 4, 2016) New&Sealed,  Help Nathan Drake come out of treasure-hunting retirement to save his brother and find Libertalia.",
      path:
          "https://m.media-amazon.com/images/I/61eSyKrwbtL._SL1000_.jpg",
      pr: "54",
    );
  }
}
