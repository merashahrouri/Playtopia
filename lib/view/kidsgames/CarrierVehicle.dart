import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class CarrierVehicle extends StatefulWidget {
  const CarrierVehicle({super.key});

  @override
  State<CarrierVehicle> createState() => _CarrierVehicleState();
}

class _CarrierVehicleState extends State<CarrierVehicle> {
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
      name: "Fire Car Truck toys",
      describtion:
          "Bennol Toddler Trucks Toys for Boys Age 1-3 3-5, 5 in 1 Fire Car Truck for Girls 1 2 3 4 5 6 Years Old, Christmas Birthday Gift Car Sets with Light Sound.",
      path:
          "https://m.media-amazon.com/images/I/81J8GnMe6LL._AC_SL1500_.jpg",
      pr: "41",
    );
  }
}
