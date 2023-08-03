import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/view/Home/shoppingCart.dart';
import 'package:flutter_final_project/view/sports/AirplaneLauncher.dart';
import 'package:flutter_final_project/view/sports/BasketBall.dart';
import 'package:flutter_final_project/view/sports/BounceHouce.dart';
import 'package:flutter_final_project/view/sports/DragonKite.dart';
import 'package:flutter_final_project/view/sports/GripIt.dart';
import 'package:flutter_final_project/view/sports/Spikeball.dart';
import 'package:flutter_final_project/view/sports/Twister.dart';
import 'package:flutter_final_project/view/sports/WaterSlide.dart';
import 'package:flutter_final_project/viewModel/Home/states.dart';
import 'package:onboarding/onboarding.dart';

import '../../viewModel/Home/cubit.dart';
import '../../widgets/custom_item.dart';

class Sports extends StatefulWidget {
  const Sports({super.key});

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  List<Widget> pages = [
    AirplaneLauncher(),
    DragonKite(),
    GripIt(),
    Spikeball(),
    Basketball(),
    BounceHouse(),
    Twister(),
    WaterSlide()
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
                title: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Sports & outdoor games")),
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
                            path: context.read<HomeCubit>().sports[index].image,
                            pr: context.read<HomeCubit>().sports[index].price,
                            name: context.read<HomeCubit>().sports[index].name,
                          ),
                          CustomItem(
                            click: () {
                              navigateToPage(context, pages[index + 4]);
                            },
                            path:
                                context.read<HomeCubit>().sports1[index].image,
                            pr: context.read<HomeCubit>().sports1[index].price,
                            name: context.read<HomeCubit>().sports1[index].name,
                          ),
                        ],
                      ),
                    ],
                  );
                },
                itemCount: context.read<HomeCubit>().sports1.length,
              ),
            ),
          );
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
