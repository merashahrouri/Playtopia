import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class RemoteControleDog extends StatefulWidget {
  const RemoteControleDog({super.key});

  @override
  State<RemoteControleDog> createState() => _RemoteControleDogState();
}

class _RemoteControleDogState extends State<RemoteControleDog> {
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
      name: "Remote Controle Robot Dog",
      describtion:
          "Remote Control Robot Dog Toy with Touch Function and Voice Control, Rc Dog Robots Toys for Kids 3,4,5,6,7,8,9,10 Year Old and up, Smart & Dancing Robot Toy, Imitates Animals Mini Pet Dog Robot.",
      path:
          "https://m.media-amazon.com/images/I/51vK8YVPvSL._AC_SL1500_.jpg",
      pr: "56",
    );
  }
}
