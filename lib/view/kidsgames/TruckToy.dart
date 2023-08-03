import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class TruckToy extends StatefulWidget {
  const TruckToy({super.key});

  @override
  State<TruckToy> createState() => _TruckToyState();
}

class _TruckToyState extends State<TruckToy> {
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
      name: "Large Garbage Truck Toys",
      describtion:
          "JOYIN Toys for Boys 3+ Years Old - 16 Large Garbage Truck Toys for Boys, Realistic Trash Truck with Trash Can Lifter and Dumping Function, Garbage Sorting Cards for Preschoolers, Kids Birthday Gift.",
      path:
          "https://m.media-amazon.com/images/I/812YEh9a5IL._AC_SL1500_.jpg",
      pr: "38",
    );
  }
}
