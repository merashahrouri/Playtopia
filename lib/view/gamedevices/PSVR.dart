import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class PSVR extends StatefulWidget {
  const PSVR({super.key});

  @override
  State<PSVR> createState() => _PSVRState();
}

class _PSVRState extends State<PSVR> {
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
      name: "PlayStation VR2",
      describtion:
          "PlayStation VR2 Sense technology: Eye tracking. Headset feedback. 3D Audio. Highly intuitive controls – Haptic Feedback, Adaptive Triggers and Finger Touch Detection .",
      path:
          "https://m.media-amazon.com/images/I/51G8NFN0AFL._SL1500_.jpg",
      pr: "400",
    );
  }
}
