import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/view/Home/home.dart';
import 'package:flutter_final_project/view/Profile/address.dart';
import 'package:flutter_final_project/view/SignIn/signin.dart';
import 'package:flutter_final_project/viewModel/SignInBloc/states.dart';
import 'package:flutter_final_project/viewModel/SignUpBloc/cubit.dart';
import 'package:onboarding/onboarding.dart';

import '../../viewModel/SignUpBloc/states.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController usernameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    mobileNumberController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SignupCubit(),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocConsumer<SignupCubit, SignupStates>(
            builder: (context, state) {
              if (state is SignInLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Form(
                  child: ListView(
                    children: <Widget>[
                       Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text("Sign Up ",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          controller: usernameController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(), hintText: "Username"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a Username.';
                          }
                          return null;
                        },
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(), hintText: "E-mail"),
                              validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter an E-mail.';
                          }
                          return null;
                        },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          controller: mobileNumberController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Mobile number"),
                              validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a Mobile number.';
                          }
                          return null;
                        },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          obscureText: true,
                          controller: passwordController,
                          validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a password.';
                          }
                          return null;
                        },
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(), hintText: "Password"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          obscureText: true,
                          controller: confirmPasswordController,
                          validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please confirm your password.';
                          }
                          return null;
                        },
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Confirm password"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 20),
                        child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 178, 168, 210)),
                                onPressed: () {
                                  context.read<SignupCubit>().signUpUser(
                                        email: emailController.text.trim(),
                                        password: passwordController.text.trim(),
                                        name: usernameController.text.trim(),
                                        phone: mobileNumberController.text.trim(),
                                        confirmPassword: confirmPasswordController.text.trim()
                                      );
                                    },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: background,
                                      fontWeight: FontWeight.w700),
                                ))),
                      )
                    ],
                  ),
                );
              }
            },
            listener: (context, Object? state) {
              
            if (state is SignUpSuccessfulState) {
              var snackBar = SnackBar(
                content: Text(
                  "Welcome ${state.msg!}",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Color.fromARGB(255, 178, 168, 210),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Address(uid: "8s8zZYOjrSRizlJcY7CqhFtfe6b2"
                  //context.read<SignupCubit>().users[1].userid.toString()
                  // context
                  //               .read<SignupCubit>()
                  //               .getUserID()
                  //               .toString()
                                )),
                                
                  (route) => false);
            } else if (state is SignUpErrorState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error.toString())),
              );
            }
          },),
      ),
    );
  }
}
