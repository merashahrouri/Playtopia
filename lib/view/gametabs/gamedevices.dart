import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/view/Home/shoppingCart.dart';
import 'package:flutter_final_project/view/gamedevices/GameDrive.dart';
import 'package:flutter_final_project/view/gamedevices/Nintendo.dart';
import 'package:flutter_final_project/view/gamedevices/PS4Stand.dart';
import 'package:flutter_final_project/view/gamedevices/PS5.dart';
import 'package:flutter_final_project/view/gamedevices/PSVR.dart';
import 'package:flutter_final_project/view/gamedevices/Playstation4.dart';
import 'package:flutter_final_project/view/gamedevices/XBox.dart';
import 'package:flutter_final_project/view/gamedevices/controller.dart';
import 'package:flutter_final_project/viewModel/Home/cubit.dart';
import 'package:flutter_final_project/widgets/custom_item.dart';
import 'package:onboarding/onboarding.dart';

import '../../viewModel/Home/states.dart';

class GameDevices extends StatefulWidget {
  GameDevices({super.key});

  @override
  State<GameDevices> createState() => _GameDevicesState();
}

class _GameDevicesState extends State<GameDevices> {
  List<Widget> pages = [
    GameDrive(),
    PS4Stand(),
    Playstation4(),
    Playstation5(),
    Nintendo(),
    PSVR(),
    Controller(),
    XBox()
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
                    child: Text("Game consoles")), actions: [
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
                                  builder: (context) =>  ShoppingCart()));
                        },
                      )),
                ),
              ],),

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
                                .gamedevices[index]
                                .image,
                            pr: context
                                .read<HomeCubit>()
                                .gamedevices[index]
                                .price,
                            name:
                                context.read<HomeCubit>().gamedevices[index].name,
                          ),
                          CustomItem(
                            click: () {
                              navigateToPage(context, pages[index + 4]);
                            },
                            path: context
                                .read<HomeCubit>()
                                .gamedevices1[index]
                                .image,
                            pr: context
                                .read<HomeCubit>()
                                .gamedevices1[index]
                                .price,
                            name: context
                                .read<HomeCubit>()
                                .gamedevices1[index]
                                .name,
                          ),
                        ],
                      ),
                      
                    ],
                  );
                },
                itemCount: context.read<HomeCubit>().gamedevices1.length,
              ),
            ),
          );
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
