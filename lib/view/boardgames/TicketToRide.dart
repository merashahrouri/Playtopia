import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class TicketToRide extends StatefulWidget {
  const TicketToRide({super.key});

  @override
  State<TicketToRide> createState() => _TicketToRideState();
}

class _TicketToRideState extends State<TicketToRide> {
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
      name: "Ticket To Ride",
      describtion:
          "Ticket to Ride Board Game | Family Board Game | Board Game for Adults and Family | Train Game | Ages 8+ | For 2 to 5 players | Average Playtime 30-60 minutes | Made by Days of Wonder.",
      path:
          "https://m.media-amazon.com/images/I/81FIotkhN9S._AC_SL1500_.jpg",
      pr: "48",
    );
  }
}
