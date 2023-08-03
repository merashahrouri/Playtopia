import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class StreetFighter extends StatefulWidget {
  const StreetFighter({super.key});

  @override
  State<StreetFighter> createState() => _StreetFighterState();
}

class _StreetFighterState extends State<StreetFighter> {
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
      name: "Street Fighter 6 Deluxe Edition",
      describtion:
          "Classic Experience Built for a Modern Era: With all core gameplay modes present, plus two brand new modes and enhanced visuals, Street Fighter 6 redefines the classic fighting game genre.",
      path:
          "https://m.media-amazon.com/images/I/8122qHS080L._AC_SL1500_.jpg",
      pr: "56",
    );
  }
}
