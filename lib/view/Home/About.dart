import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.topLeft,
          child: Text("About us")),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
            child: Image.asset(
                                            'assets/images/img/logo.png',
                                          ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.00, vertical: 5),
            child: Text("Playtopia a feature-rich games shop application that aims to enhance the gaming experience for users by providing an extensive game catalog, personalized recommendations, seamless purchasing, a vibrant gaming community, and robust management tools. With its user-centric approach and comprehensive features, GameSpot is designed to be the go-to application for gamers to explore, purchase, and engage with their favorite games.",textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,),),
          ),

        ],
      ),
    );
  }
}