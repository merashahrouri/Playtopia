
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/view/Home/shoppingCart.dart';
import 'package:flutter_final_project/view/videogames/AssassinsCreed.dart';
import 'package:flutter_final_project/view/videogames/CallOfDuty.dart';
import 'package:flutter_final_project/view/videogames/CrashBandicoot.dart';
import 'package:flutter_final_project/view/videogames/Fifa.dart';
import 'package:flutter_final_project/view/videogames/Fortnite.dart';
import 'package:flutter_final_project/view/videogames/Hogwarts.dart';
import 'package:flutter_final_project/view/videogames/StarWars.dart';
import 'package:flutter_final_project/view/videogames/StreetFighter.dart';
import 'package:flutter_final_project/view/videogames/TheLastOfUs.dart';
import 'package:flutter_final_project/view/videogames/Uncharted.dart';
import 'package:flutter_final_project/viewModel/Home/cubit.dart';
import 'package:onboarding/onboarding.dart';

import '../../viewModel/Home/states.dart';
import '../../widgets/custom_item.dart';

class VideoGames extends StatefulWidget {
  VideoGames({super.key});

  @override
  State<VideoGames> createState() => _VideoGamesState();
}

class _VideoGamesState extends State<VideoGames> {
  List<Widget> pages = [
CallOfDuty(),
Fifa(),
Hogwarts(),
StarWars(),
TheLastOfUs(),
AssassinsCreed(),
CrashBandicoot(),
Fortnite(),
StreetFighter(),
Uncharted()
  ];

  void navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getData(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
                title: const Align(
                    alignment: Alignment.topLeft, child: Text("Video games")),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: const Icon(
                          Icons.shopping_bag,
                          color: background,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShoppingCart()));
                        },
                      )),
                ),
              ],
            ),
            body: SafeArea(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          CustomItem(
                            click: () {
                              navigateToPage(context, pages[index]);
                            },
                            path: context
                                .read<HomeCubit>()
                                .videogames[index]
                                .image,
                            pr: context
                                .read<HomeCubit>()
                                .videogames[index]
                                .price,
                            name: context
                                .read<HomeCubit>()
                                .videogames[index]
                                .name,
                          ),
                          CustomItem(
                            click: () {
                              navigateToPage(context, pages[index + 5]);
                            },
                            path: context
                                .read<HomeCubit>()
                                .videogames1[index]
                                .image,
                            pr: context
                                .read<HomeCubit>()
                                .videogames1[index]
                                .price,
                            name: context
                                .read<HomeCubit>()
                                .videogames1[index]
                                .name,
                          ),
                        ],
                      ),
                    ],
                  );
                },
                itemCount: context.read<HomeCubit>().videogames1.length,
              ),
            ),
          );
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
