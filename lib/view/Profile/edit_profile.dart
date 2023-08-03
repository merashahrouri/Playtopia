import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/viewModel/SignUpBloc/cubit.dart';
import 'package:flutter_final_project/viewModel/SignUpBloc/states.dart';
import 'package:onboarding/onboarding.dart';

import '../../viewModel/Profile/cubit.dart';
import '../../viewModel/Profile/states.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerMobile = TextEditingController();
  TextEditingController controllerAddress = TextEditingController();

  @override
  void dispose() {
    controllerName.dispose();
    controllerMobile.dispose();
    controllerAddress.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Text("Edit your profile",textAlign: TextAlign.left,)),
          elevation: 0.0,
        ),
        body: BlocConsumer<SignupCubit, SignupStates>(
          builder: (context, state) {
            return ListView(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10),
                  child: TextField(
                    controller: controllerName,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: "Mera"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10),
                  child: TextField(
                    controller: controllerMobile,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: "0962 79 284 1778"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10),
                  child: TextFormField(
                    maxLines: 5,
                    controller: controllerAddress,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: "Amman, Jordan - Khalda - AlBahhath street"),
                  ),
                ),
               Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical:10),
                    child: SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 178, 168, 210)),
                            onPressed: () {
                              var snackBar = SnackBar(
                              content: Text(
                                "Saved",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              backgroundColor:
                                  Color.fromARGB(255, 178, 168, 210),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Save",
                              style: TextStyle(
                                fontSize: 16,color: background,fontWeight: FontWeight.bold
                              ),
                            ))),
                  ),
              ],
            );
          },
          listener: (context, state) {},
        ),
      ),
    );
  }
}
