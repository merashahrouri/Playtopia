import 'package:flutter/material.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class DinasourTruck extends StatefulWidget {
  const DinasourTruck({super.key});

  @override
  State<DinasourTruck> createState() => _DinasourTruckState();
}

class _DinasourTruckState extends State<DinasourTruck> {
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
      name: "Dinasaur Truck",
      describtion:
          "TEMI Dinosaur Truck Toy for Kids 3-5 Years, Triceratops Transport Car Carrier Truck with 8 Dino Figures, Activity Play Mat, Dino Eggs and Trees, Capture Jurassic Play Set for Boys and Girls.",
      path:
          "https://m.media-amazon.com/images/I/811AWsjIFUL._AC_SL1500_.jpg",
      pr: "34",
    );
  }
}
