import 'package:flutter/material.dart';

import 'package:flutter_final_project/view/gametabs/buildinggames.dart';
import 'package:flutter_final_project/view/gametabs/sports.dart';
import 'package:flutter_final_project/view/sports/BasketBall.dart';
import 'package:flutter_final_project/view/sports/BounceHouce.dart';
import 'package:flutter_final_project/view/sports/DragonKite.dart';
import 'package:flutter_final_project/view/sports/Spikeball.dart';
import 'package:flutter_final_project/view/videogames/AssassinsCreed.dart';
import 'package:flutter_final_project/view/videogames/CallOfDuty.dart';
import 'package:flutter_final_project/view/videogames/Fortnite.dart';
import 'package:flutter_final_project/view/videogames/TheLastOfUs.dart';
import 'package:flutter_final_project/view/videogames/Uncharted.dart';
import 'package:lottie/lottie.dart';
import 'package:onboarding/onboarding.dart';
import '../gametabs/boardGames.dart';
import '../gametabs/gamedevices.dart';
import '../gametabs/videoGames.dart';


class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VideoGames()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 8)
                          ],
                          color: Colors.white,
                        ),
                        height: 250,
                        width: 450,
                        child: Stack(
                          children: [
                            SizedBox(
                                height: 250,
                                width: 400,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.network(
                                      "https://i.pinimg.com/564x/94/58/a5/9458a57c2c2e5d207556b4cb1a91902a.jpg",
                                      fit: BoxFit.cover,
                                    ))),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 30,
                                  width: 330,
                                  color: Color.fromARGB(144, 255, 255, 255),
                                  child: Text(
                                    "Escape reality and play games",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                        color: background),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TheLastOfUs()));
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://i.pinimg.com/564x/b0/10/65/b010653cc075ac7f7ea6a1a5f82aaefc.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CallOfDuty()));
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://i.pinimg.com/564x/4c/94/b3/4c94b322b88866b428054484d84d1899.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AssassinsCreed()));
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://i.pinimg.com/564x/55/54/d1/5554d1bcb961b31def2355f9e0ccf1a2.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Uncharted()));
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://i.pinimg.com/736x/31/d7/07/31d707254d10d91193df42fc375066c9.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Fortnite()));
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://i.pinimg.com/564x/50/65/54/50655437ff81ed9c54b5515a67d730f6.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GameDevices()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 8)
                          ],
                          color: background,
                        ),
                        height: 300,
                        width: 450,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: SizedBox(
                                  height: 250,
                                  width: 400,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Lottie.asset(
                                        "assets/images/lottie/console.json",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 10),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "For every game over ",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white70),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "there is a play again",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white70),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BoardGames()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 8)
                          ],
                          color: Colors.white,
                        ),
                        height: 300,
                        width: 450,
                        child: Stack(
                          children: [
                            SizedBox(
                                height: double.infinity,
                                width: 400,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.network(
                                      "https://i.pinimg.com/564x/52/b5/d9/52b5d9a036323a9080a81b39dc66504a.jpg",
                                      fit: BoxFit.cover,
                                    ))),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 29,
                                  width: 250,
                                  color: Color.fromARGB(144, 255, 255, 255),
                                  child: Text(
                                    "FAMILY GAME NIGHT",
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500,
                                        color: background),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 4.0, top: 33),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 29,
                                  width: 312,
                                  color: Color.fromARGB(144, 255, 255, 255),
                                  child: Text(
                                    "games every one will love!",
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500,
                                        color: background),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ///////////////////////////////////////////////////////////////////////////
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BuildingGames()));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
                  child: Column(
                    children: [
                      Text(
                        "Pick up & play puzzles",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: background),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/71ocMgpGYbL._AC_SL1005_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/815izJojNqL._AC_SL1500_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/71MeXYyG9DL._AC_SL1000_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/91WOnRo67KL._AC_SL1500_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/911L2nsTYIL._AC_SL1500_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/91WdvwP0FDL._AC_SL1500_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/91+xvWyCFHL._AC_SL1500_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/91wsxtpdLmL._AC_SL1500_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/81xgv7zD+5L._AC_SL1500_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/91XCwWn8ZsL._AC_SL1500_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/91xDBFJU6XL._AC_SL1500_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/81x0LRtdD1L._AC_SL1500_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/81OV8AF1vyL._AC_SL1500_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/71+EYwVig8L._AC_SL1500_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/718Hf4c4SJL._AC_SL1500_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/81ivSEqW1QL._AC_SL1500_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 4),
                              child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        "https://m.media-amazon.com/images/I/71TElwT2TsL._AC_SL1500_.jpg",
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                          ],
                        ),
                      ),
///////////////////////////////////////////////////////////////////////////////////////////
                    ],
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
                    height: 330,
                    width: 450,
                    child: ListView(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 7.0, left: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Trending outdoor games",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                  color: background),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: SizedBox(
                              height: 70,
                              width: 60,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    "https://m.media-amazon.com/images/I/61QsSwfhnkL._AC_SL1500_.jpg",
                                    fit: BoxFit.cover,
                                  ))),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Spikeball()));
                          },
                          title: Text(
                            "Spikeball Standard",
                            style: TextStyle(color: background),
                          ),
                          subtitle: Text("Game for The Backyard, Beach, Park.",
                              style: TextStyle(color: background)),
                        ),
                        ListTile(
                          leading: SizedBox(
                              height: 70,
                              width: 60,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    "https://m.media-amazon.com/images/I/61Hz5JvcZxL._AC_SL1500_.jpg",
                                    fit: BoxFit.cover,
                                  ))),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BounceHouse()));
                          },
                          title: Text(
                            "Bounce house",
                            style: TextStyle(color: background),
                          ),
                          subtitle: Text(
                              "YARD Bounce House Mighty Castle with Slide Inflatable Obstacle Bouncer.",
                              style: TextStyle(color: background)),
                        ),
                        ListTile(
                          leading: SizedBox(
                              height: 70,
                              width: 60,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    "https://m.media-amazon.com/images/I/71Gw4fpccXL._AC_SL1500_.jpg",
                                    fit: BoxFit.cover,
                                  ))),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DragonKite()));
                          },
                          title: Text(
                            "Classical Dragon Kite ",
                            style: TextStyle(color: background),
                          ),
                          subtitle: Text(
                              "HENGDA KITE-Upgrade Classical Dragon Kite Stereoscopic Dragon Kites for Kids & Adults Easy to Fly.",
                              style: TextStyle(color: background)),
                        ),
                        ListTile(
                          leading: SizedBox(
                              height: 70,
                              width: 60,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    "https://m.media-amazon.com/images/I/71wC4lZV9KL._AC_SL1500_.jpg",
                                    fit: BoxFit.cover,
                                  ))),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Basketball()));
                          },
                          title: Text(
                            "Basketball Hoop",
                            style: TextStyle(color: background),
                          ),
                          subtitle: Text(
                              "Xucutu Basketball Hoop Indoor for Kids.",
                              style: TextStyle(color: background)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}