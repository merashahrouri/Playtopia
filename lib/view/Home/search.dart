import 'package:flutter/material.dart';
import 'package:flutter_final_project/view/boardgames/Catan.dart';
import 'package:flutter_final_project/view/gametabs/boardGames.dart';
import 'package:flutter_final_project/view/gametabs/buildinggames.dart';
import 'package:flutter_final_project/view/gametabs/gamedevices.dart';
import 'package:flutter_final_project/view/gametabs/kidsgames.dart';
import 'package:flutter_final_project/view/gametabs/sports.dart';
import 'package:flutter_final_project/view/gametabs/videoGames.dart';
import 'package:flutter_final_project/view/sports/AirplaneLauncher.dart';
import 'package:flutter_final_project/view/sports/BounceHouce.dart';
import 'package:flutter_final_project/view/videogames/TheLastOfUs.dart';
import 'package:onboarding/onboarding.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController searchController = TextEditingController();
  final List<Widget> screens = [
    BoardGames(),
    BuildingGames(),
    GameDevices(),
    KidsGames(),
    Sports(),
    VideoGames()
  ];
  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _performSearch(String searchText) {
    print('Searching for: $searchText');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0, left: 20, right: 20),
          child: SizedBox(
            height: 50,
            width: 370,
            child: Card(
                elevation: 10,
                child: TextField(
                  controller: searchController,
                  onSubmitted: (value) {},
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.all(8),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  onTap: () => _performSearch(searchController.text),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
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
                      "Popular searches",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: background),
                    ),
                  ),
                ),
                 Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BounceHouse()));
                  },
                           child: Padding(
                              padding: const EdgeInsets.only(right:8.0,bottom: 8),
                              child: Container(
                                height: 30,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(width: 1, color: Colors.grey),
                                ),
                                child: const Center(child: Text("Bounce house", style: TextStyle(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w400),)),
                              ),
                            ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => KidsGames()));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 8.0, bottom: 8),
                                child: Container(
                                  height: 30,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border:
                                        Border.all(width: 1, color: Colors.grey),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "Kids toys",
                                    style: TextStyle(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w400),
                                  )),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BoardGames()));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 8.0, bottom: 8),
                                child: Container(
                                  height: 30,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border:
                                        Border.all(width: 1, color: Colors.grey),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "Board games",
                                    style: TextStyle(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w400),
                                  )),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TheLastOfUs()));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 8.0, bottom: 8),
                                child: Container(
                                  height: 30,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border:
                                        Border.all(width: 1, color: Colors.grey),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "The Last of us",
                                    style: TextStyle(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w400),
                                  )),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VideoGames()));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 8.0, bottom: 8),
                                child: Container(
                                  height: 30,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border:
                                        Border.all(width: 1, color: Colors.grey),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "Video games",
                                    style: TextStyle(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w400),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Catan()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Container(
                                  height: 30,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 1, color: Colors.grey),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "Catan",
                                    style: TextStyle(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w400),
                                  )),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BuildingGames()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Container(
                                  height: 30,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border:
                                        Border.all(width: 1, color: Colors.grey),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "Puzzles",
                                    style: TextStyle(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w400),
                                  )),
                                ),
                              ),
                            ),
                            GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sports()));
                            },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Container(
                                  height: 30,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border:
                                        Border.all(width: 1, color: Colors.grey),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "Sports",
                                    style: TextStyle(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w400),
                                  )),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AirplaneLauncher()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Container(
                                  height: 30,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border:
                                        Border.all(width: 1, color: Colors.grey),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "Airplane launcher",
                                    style: TextStyle(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w400),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    )));
  }
}
