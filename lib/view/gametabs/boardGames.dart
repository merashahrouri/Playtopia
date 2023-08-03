import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/view/Home/shoppingCart.dart';
import 'package:flutter_final_project/view/boardgames/Azul.dart';
import 'package:flutter_final_project/view/boardgames/Catan.dart';
import 'package:flutter_final_project/view/boardgames/Darb.dart';
import 'package:flutter_final_project/view/boardgames/Monopoly.dart';
import 'package:flutter_final_project/view/boardgames/Sorry.dart';
import 'package:flutter_final_project/view/boardgames/TicketToRide.dart';
import 'package:flutter_final_project/view/boardgames/Uno.dart';
import 'package:flutter_final_project/viewModel/Home/states.dart';
import 'package:flutter_final_project/widgets/custom_item.dart';
import 'package:onboarding/onboarding.dart';
import '../../viewModel/Home/cubit.dart';
import '../boardgames/MonopolyDeal.dart';

class BoardGames extends StatefulWidget {
  
  BoardGames({super.key});
  @override
  State<BoardGames> createState() => _BoardGamesState();
}

class _BoardGamesState extends State<BoardGames> {
  List<Widget> pages = [
    Azul(),
    Catan(),
    MonopolyDeal(),
    TicketToRide(),
    Darb(),
    Monopoly(),
    Sorry(),
    Uno()
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
            appBar: AppBar(title: Align(alignment: Alignment.topLeft,child: Text("Board games")),
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
                                  builder: (context) =>  ShoppingCart()));
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
                              navigateToPage(context, pages[index]);},
                            path: context.read<HomeCubit>().boardgames[index].image,
                            pr: context.read<HomeCubit>().boardgames[index].price,
                            name: context.read<HomeCubit>().boardgames[index].name,
                          ),
                         
                       CustomItem(
                            click: () {
                              navigateToPage(context, pages[index+4]);
                            },
                            path: context
                                .read<HomeCubit>()
                                .boardgames1[index]
                                .image,
                            pr: context
                                .read<HomeCubit>()
                                .boardgames1[index]
                                .price,
                            name:
                                context.read<HomeCubit>().boardgames1[index].name,
                          ),
                        ],
                      ),
                    ],
                  );
                },
                itemCount: context.read<HomeCubit>().boardgames1.length,
              ),
            ),
          );
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
