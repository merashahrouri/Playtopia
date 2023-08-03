import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/view/Home/home.dart';
import 'package:flutter_final_project/view/gametabs/boardGames.dart';
import 'package:flutter_final_project/view/gametabs/buildinggames.dart';
import 'package:flutter_final_project/view/gametabs/gamedevices.dart';
import 'package:flutter_final_project/view/gametabs/kidsgames.dart';
import 'package:flutter_final_project/view/gametabs/sports.dart';
import 'package:flutter_final_project/view/gametabs/videoGames.dart';
import 'package:onboarding/onboarding.dart';

class Category extends StatefulWidget {
   Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              const Align(alignment: Alignment.centerLeft, child: Text("Categoris")),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  GameDevices()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
                    color: Colors.white,),
                    height: 320,
                    width: 450,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10),
                          child: Container(
                              height: 250,
                              width: 400,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    "https://prod.assets.earlygamecdn.com/images/Neues-Projekt2.jpg?mtime=1666015480",
                                    fit: BoxFit.cover,
                                  ))),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Game consoles",
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.w400, color: background),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => VideoGames()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
                      color: Colors.white,
                    ),
                    height: 320,
                    width: 450,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10),
                          child: Container(
                              height: 250,
                              width: 400,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    "https://substackcdn.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fd4d7dc3e-9a4e-4334-b19f-837ace16c8f6_1200x675.jpeg",
                                    fit: BoxFit.cover,
                                  ))),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Video games",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                  color: background),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => BoardGames()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20, top: 10, bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
                      color: Colors.white,
                    ),
                    height: 320,
                    width: 450,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10),
                          child: Container(
                              height: 250,
                              width: 400,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    "https://media-cldnry.s-nbcnews.com/image/upload/t_nbcnews-fp-1200-630,f_auto,q_auto:best/newscms/2020_25/3390425/board-games-kr-2x1-tease-200616.jpg",
                                    fit: BoxFit.cover,
                                  ))),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Board games",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                  color: background),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sports()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
                      color: Colors.white,
                    ),
                    height: 320,
                    width: 450,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10),
                          child: Container(
                              height: 250,
                              width: 400,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    "https://m.media-amazon.com/images/I/71s0OHKSb+L._AC_SL1500_.jpg",
                                    fit: BoxFit.cover,
                                  ))),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Sports & outdoor games",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                  color: background),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BuildingGames()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
                      color: Colors.white,
                    ),
                    height: 320,
                    width: 450,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10),
                          child: Container(
                              height: 250,
                              width: 400,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    "https://m.media-amazon.com/images/I/71xsV4Whd3S._AC_SL1500_.jpg",
                                    fit: BoxFit.cover,
                                  ))),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Building games",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                  color: background),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => KidsGames()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
                      color: Colors.white,
                    ),
                    height: 320,
                    width: 450,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10),
                          child: Container(
                              height: 250,
                              width: 400,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    "https://t4.ftcdn.net/jpg/03/24/42/21/360_F_324422176_Lgn7NTeFyNaUKIDu0Ppls1u8zb8wsKS4.jpg",
                                    fit: BoxFit.cover,
                                  ))),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Kids toys",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                  color: background),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ));
  }
}
