import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/view/Home/shoppingCart.dart';
import 'package:flutter_final_project/view/kidsgames/CarrierVehicle.dart';
import 'package:flutter_final_project/view/kidsgames/CrawlingCrab.dart';
import 'package:flutter_final_project/view/kidsgames/DinasourTruck.dart';
import 'package:flutter_final_project/view/kidsgames/KidsBook.dart';
import 'package:flutter_final_project/view/kidsgames/MonsterJam.dart';
import 'package:flutter_final_project/view/kidsgames/RemoteControleDog.dart';
import 'package:flutter_final_project/view/kidsgames/TruckToy.dart';
import 'package:flutter_final_project/view/kidsgames/WoodenKit.dart';
import 'package:flutter_final_project/viewModel/Home/states.dart';
import 'package:onboarding/onboarding.dart';

import '../../viewModel/Home/cubit.dart';
import '../../widgets/custom_item.dart';

class KidsGames extends StatefulWidget {
  const KidsGames({super.key});

  @override
  State<KidsGames> createState() => _KidsGamesState();
}

class _KidsGamesState extends State<KidsGames> {
  List<Widget> pages = [
    CrawlingCrab(),
    KidsBook(),
    TruckToy(),
    RemoteControleDog(),
    CarrierVehicle(),
    DinasourTruck(),
    MonsterJam(),
    WoodenKit()
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
          appBar: AppBar(title: Align(
                    alignment: Alignment.topLeft,
                    child: const Text("Kids toys")),
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
                                .kids[index]
                                .image,
                            pr: context
                                .read<HomeCubit>()
                                .kids[index]
                                .price,
                            name: context
                                .read<HomeCubit>()
                                .kids[index]
                                .name,
                          ),
                          CustomItem(
                            click: () {
                              navigateToPage(context, pages[index+4]);
                            },
                            path: context
                                .read<HomeCubit>()
                                .kids1[index]
                                .image,
                            pr: context
                                .read<HomeCubit>()
                                .kids1[index]
                                .price,
                            name: context
                                .read<HomeCubit>()
                                .kids1[index]
                                .name,
                          ),
                        ],
                      ),
                    ],
                  );
                },
                itemCount: context.read<HomeCubit>().kids1.length,
              ),
            ),
          );
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
