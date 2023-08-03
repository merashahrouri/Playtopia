import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class MonopolyDeal extends StatefulWidget {
  const MonopolyDeal({super.key});

  @override
  State<MonopolyDeal> createState() => _MonopolyDealState();
}

class _MonopolyDealState extends State<MonopolyDeal> {
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
      name: "Monopoly Deal",
      describtion:
          "MONOPOLY Deal Card Game, Quick-Playing Card Game for 2-5 Players, Easter Basket Gifts, Game for Families and Kids Ages 8 and Up (Amazon Exclusive).",
      path:
          "https://m.media-amazon.com/images/I/71EDLJAit-L._AC_SL1500_.jpg",
      pr: "7.79",
    );
  }
}
