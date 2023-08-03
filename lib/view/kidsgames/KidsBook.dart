import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class KidsBook extends StatefulWidget {
  const KidsBook({super.key});

  @override
  State<KidsBook> createState() => _KidsBookState();
}

class _KidsBookState extends State<KidsBook> {
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
      name: "LeapFrog Learning Friends 100 Words Book",
      describtion:
          "Meet learning friends Turtle, Tiger and Monkey who will introduce more than 100 age-appropriate words chosen by learning experts, Word categories include: pets, animals, food, mealtime, colors, activities, opposites, outside and more.",
      path:
          "https://m.media-amazon.com/images/I/81K35upJrHL._AC_SL1500_.jpg",
      pr: "33",
    );
  }
}
