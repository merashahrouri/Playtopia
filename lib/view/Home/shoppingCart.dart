import 'package:flutter/material.dart';
import 'package:flutter_final_project/view/Home/checkout.dart';
import 'package:flutter_final_project/view/buildinggames%20copy%205/StarWarsLEGO.dart';
import 'package:flutter_final_project/view/sports/Spikeball.dart';
import 'package:flutter_final_project/widgets/custom_cart_item.dart';
import 'package:onboarding/onboarding.dart';

class ShoppingCart extends StatefulWidget {
  ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: ListView(
                    children: [
                      CustomCartItem(click: () { Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Spikeball())); },
                              name: "Spikeball Standard",price: "200",image: "https://m.media-amazon.com/images/I/61QsSwfhnkL._AC_SL1500_.jpg",),
                    CustomCartItem(
                    click: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => StarWarsLEGO()));
                    },
                    name: "Star Wars LEGO",
                    price: "1000",
                    image:
                        "https://m.media-amazon.com/images/I/91UggQjKrhL._AC_SL1500_.jpg",
                  ),
                    
                    ],
                  ),
                ),
              ),Align
                (alignment: Alignment.bottomCenter,
                  child:   Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                          child: SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 1,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromARGB(255, 178, 168, 210)),
                                  onPressed: () {
        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Checkout())); 
                                  },
                                  child: const Text(
                                    "Checkout",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: background,
                                        fontWeight: FontWeight.w700),
                                  ))),
                        ),
                )
            ],
          ),
        ));
  }
}
