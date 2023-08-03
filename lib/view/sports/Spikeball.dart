import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class Spikeball extends StatefulWidget {
  const Spikeball({super.key});

  @override
  State<Spikeball> createState() => _SpikeballState();
}

class _SpikeballState extends State<Spikeball> {
  @override
  Widget build(BuildContext context) {
    return CustomItemPage(
      click: () {
        
      },
      name: "Spikeball Rookie Kit",
      describtion:
          "Spikeball Rookie Kit - 50% Larger Net and Ball - Played Outdoors, Indoors, Yard, Lawn, Beach - Designed for New Players.",
      path:
          "https://m.media-amazon.com/images/I/71pVub9IMZL._AC_SL1500_.jpg",
      pr: "200",
    );
  }
}
