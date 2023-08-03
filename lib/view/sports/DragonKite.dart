import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class DragonKite extends StatefulWidget {
  const DragonKite({super.key});

  @override
  State<DragonKite> createState() => _DragonKiteState();
}

class _DragonKiteState extends State<DragonKite> {
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
      name: "Dragon Kite",
      describtion:
          "HENGDA KITE-Upgrade Classical Dragon Kite Stereoscopic Dragon Kites for Kids & Adults Easy to Fly for Beginner Easter 55inch x 62inch Single Line with Tail.",
      path:
          "https://m.media-amazon.com/images/I/71Gw4fpccXL._AC_SL1500_.jpg",
      pr: "18.79",
    );
  }
}
