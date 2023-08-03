import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class BounceHouse extends StatefulWidget {
  const BounceHouse({super.key});

  @override
  State<BounceHouse> createState() => _BounceHouseState();
}

class _BounceHouseState extends State<BounceHouse> {
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
      name: "Bounce House",
      describtion:
          "YARD Bounce House Mighty Castle with Slide Inflatable Obstacle Bouncer 0.4mm Vinyl Thick Material Children Outdoor Jump Castle with Heavy Duty Blower.",
      path:
          "https://m.media-amazon.com/images/I/61Hz5JvcZxL._AC_SL1500_.jpg",
      pr: "355",
    );
  }
}
