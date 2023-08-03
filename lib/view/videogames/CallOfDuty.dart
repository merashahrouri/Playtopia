import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class CallOfDuty extends StatefulWidget {
  const CallOfDuty({super.key});

  @override
  State<CallOfDuty> createState() => _CallOfDutyState();
}

class _CallOfDutyState extends State<CallOfDuty> {
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
      name: "Call of Duty: Black Ops Cold War (PS5)",
      describtion:
          "As Elite operatives, you will Follow the trail of a shadowy Figure named perseus who is on a mission to destabilize the global balance of power and change the course of history..",
      path:
          "https://m.media-amazon.com/images/I/71AkQVh0p8L._SL1500_.jpg",
      pr: "43",
    );
  }
}
