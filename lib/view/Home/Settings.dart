import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/viewModel/MyApp/cubit.dart';
import 'package:flutter_final_project/viewModel/MyApp/states.dart';

// class Settings extends StatefulWidget {
//   const Settings({super.key});

//   @override
//   State<Settings> createState() => _SettingsState();
// }

// class _SettingsState extends State<Settings> {
//   @override
//   Widget build(BuildContext context) {
//     return  BlocProvider (create: (context) => MyAppCubit(),
//       child: Scaffold(
//         appBar: AppBar(title: const Text("Settings"),),
//         body: BlocConsumer<MyAppCubit,MyAppStates>(
//                 builder: (context, state) {
//                   return ListView(
//                     children: [
//                       ListTile(
//                   leading:  const Icon(Icons.color_lens,color:Colors.black ,),
//                   title: Text("Change theme".tr(),
//                   style: Theme.of(context).textTheme.bodyMedium,
//                   ),
//                   trailing: Switch(
//                     value: context.read<MyAppCubit>().darktheme,
//                    onChanged: (v){
//                     setState(() {
//               context.read<MyAppCubit>().Changetheme(v);
//             });
//                   }),
//                 ),
//                     ListTile(
//                       onTap: () {
//                         if (EasyLocalization.of(context)!
//                                 .currentLocale
//                                 .toString() ==
//                             "ar_DZ") {
//                           EasyLocalization.of(context)!
//                               .setLocale(const Locale('en', 'US'));
//                         } else {
//                           EasyLocalization.of(context)!
//                               .setLocale(const Locale('ar', 'DZ'));
//                         }
//                       },
//                       leading: const Icon(Icons.language,
//                         color: Colors.black,
//                       ),
//                       title: const Text("Translate to arabic language"),
//                       trailing:
//                       Padding(
//                         padding: const EdgeInsets.only(right:10.0),
//                         child: const Icon(Icons.switch_right,size: 35,),
//                       ),
//                     ),
//                 ],
//                   );
//                 },
//                 listener: (context, state) {
//                 },
//                 )));
//   }
// }

class Settings extends StatelessWidget {
  Settings({super.key});


  @override
  Widget build(BuildContext context) {
    

    return BlocProvider(
      create: (BuildContext context) => MyAppCubit(),
      child: BlocConsumer<MyAppCubit, MyAppStates>(
          builder: (context, state) {
            return SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  title: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Settings")),
                ),
                body: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.color_lens),
                      title: Text(
                        "Change theme".tr(),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      trailing: Switch(
                          value: context.read<MyAppCubit>().darktheme,
                          onChanged: (bool v) {
                            context.read<MyAppCubit>().Changetheme(v);
                          }),
                    ),
                    ListTile(
                      onTap: () {
                        if (EasyLocalization.of(context)!.currentLocale ==
                  Locale('ar', 'DZ')) {
                EasyLocalization.of(context)!.setLocale(Locale('en', 'US'));
                        } else {
                EasyLocalization.of(context)!.setLocale(Locale('ar', 'DZ'));
                        }
                      },
                      leading: Icon(Icons.language),
                      title: Text("Language".tr()),
                      trailing:
                        Padding(
                          padding: const EdgeInsets.only(right:10.0),
                          child: const Icon(Icons.switch_right,size: 35,),
                        ),
                    ),
                    
                  ],
                ),
              ),
            );
          },
          listener: (context, state) {}),
    );
  }
}
