import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class WaterSlide extends StatefulWidget {
  const WaterSlide({super.key});

  @override
  State<WaterSlide> createState() => _WaterSlideState();
}

class _WaterSlideState extends State<WaterSlide> {
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
      name: "Water Slide",
      describtion:
          "JOYIN 22.5ft Water Slides and 2 Bodyboards, Lawn Water Slide Summer Slip Waterslides Water Toy with Build in Sprinkler for Backyard Outdoor Water Fun for Kids.",
      path:
          "https://m.media-amazon.com/images/I/91F-xPeNZcL._AC_SL1500_.jpg",
      pr: "39",
    );
  }
}
