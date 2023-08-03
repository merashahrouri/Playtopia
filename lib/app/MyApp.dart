
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/viewModel/MyApp/cubit.dart';

import '../helper/Theme/theme.dart';
import '../viewModel/MyApp/states.dart';


class MyApp extends StatelessWidget {
  MyApp({super.key, theme});

  @override
  Widget build(BuildContext context) {
    return BlocProvider 
        (
      create: (context) => MyAppCubit(),
      child: BlocConsumer<MyAppCubit, MyAppStates>(
          builder: (context, state) {
            return MaterialApp(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              title: 'Flutter Demo',
              theme: lightTheme,
              darkTheme: darkTheme,
              
              themeMode: context.read<MyAppCubit>().darktheme
                  ? ThemeMode.dark
                  : ThemeMode.light,
            );
          },
          listener: (context, state) {}),
    );
  }
}
