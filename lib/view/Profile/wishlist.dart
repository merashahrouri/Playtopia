import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/widgets/custom_item.dart';

class WishList extends StatefulWidget {
  final String userID;
  WishList({Key? key, required this.userID}) : super(key: key);

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: SafeArea(
              child: ListView(
                
                    children: [
                      Row(
                        children: [
                          CustomItem(
                            click: () { 
                              
                              },
                            path: "https://m.media-amazon.com/images/I/81FIotkhN9S._AC_SL1500_.jpg",
                            pr: "48",
                            name: "Ticket To Ride",
                          ),
                         
                       CustomItem(
                            click: () {
                              
                            },
                            path: "https://m.media-amazon.com/images/I/71iwCyrKdhL._SL1500_.jpg",
                            pr: "32",
                            name:
                                "Fortnite",
                          ),
                        ],
                      
                  )
                    ]
              ),
            ),

              );
  }
}
