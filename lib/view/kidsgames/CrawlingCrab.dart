import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class CrawlingCrab extends StatefulWidget {
  const CrawlingCrab({super.key});

  @override
  State<CrawlingCrab> createState() => _CrawlingCrabState();
}

class _CrawlingCrabState extends State<CrawlingCrab> {
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
      name: "Crawling Crab",
      describtion:
          "Baby Toys Infant Crawling Crab: Tummy Time Toy Gifts 3 4 5 6 7 8 9 10 11 12 Babies Boy Girl 3-6 6-12 Learning Crawl 9-12 12-18 Walking Toddler 36 Months Old Music Development Interactive Birthday Gift.",
      path:
          "https://m.media-amazon.com/images/I/61VAvwrFCnL._AC_SL1500_.jpg",
      pr: "23",
    );
  }
}
