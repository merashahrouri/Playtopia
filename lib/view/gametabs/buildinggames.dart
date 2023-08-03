import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/view/Home/shoppingCart.dart';
import 'package:flutter_final_project/view/buildinggames%20copy%205/DinasourLEGO.dart';
import 'package:flutter_final_project/view/buildinggames%20copy%205/GnomesPuzzle.dart';
import 'package:flutter_final_project/view/buildinggames%20copy%205/PicassoTiles.dart';
import 'package:flutter_final_project/view/buildinggames%20copy%205/StarWarsLEGO.dart';
import 'package:flutter_final_project/view/buildinggames%20copy%205/jigsaw.dart';
import 'package:flutter_final_project/view/buildinggames%20copy%205/magneticTiles.dart';
import 'package:flutter_final_project/view/buildinggames%20copy%205/moonP.dart';
import 'package:flutter_final_project/view/buildinggames%20copy%205/woodenPuzzle.dart';
import 'package:onboarding/onboarding.dart';

import '../../viewModel/Home/cubit.dart';
import '../../viewModel/Home/states.dart';
import '../../widgets/custom_item.dart';

class BuildingGames extends StatefulWidget {
  const BuildingGames({super.key});

  @override
  State<BuildingGames> createState() => _BuildingGamesState();
}

class _BuildingGamesState extends State<BuildingGames> {
    List<Widget> pages = [
    MoonPuzzle(),
    JigsawPuzzle(),
    MagneticTiles(),
    PicassoTiles(),
    DinasourLEGO(),
    StarWarsLEGO(),
    GnomesPuzzle(),
    WoodenPuzzle()
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
            appBar: AppBar(title: Text("Building toys: puzzles, lego"),
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
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CustomItem(
                            click: () {
                              navigateToPage(context, pages[index]);
                            },
                            path: context
                                .read<HomeCubit>()
                                .buildinggames[index]
                                .image,
                            pr: context
                                .read<HomeCubit>()
                                .buildinggames[index]
                                .price,
                            name: context
                                .read<HomeCubit>()
                                .buildinggames[index]
                                .name,
                          ),
                          CustomItem(
                            click: () {
                              navigateToPage(context, pages[index+4]);
                            },
                            path: context
                                .read<HomeCubit>()
                                .buildinggames1[index]
                                .image,
                            pr: context
                                .read<HomeCubit>()
                                .buildinggames1[index]
                                .price,
                            name: context
                                .read<HomeCubit>()
                                .buildinggames1[index]
                                .name,
                          ),
                        ],
                      ),
                    ],
                  );
                },
                itemCount: context.read<HomeCubit>().buildinggames1.length,
              ),
            ),
          );
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
