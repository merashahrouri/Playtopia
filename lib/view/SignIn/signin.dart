import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final_project/view/Profile/address.dart';
import 'package:flutter_final_project/viewModel/SignInBloc/cubit.dart';
import 'package:flutter_final_project/viewModel/SignInBloc/states.dart';
import 'package:onboarding/onboarding.dart';

import '../../viewModel/SignUpBloc/cubit.dart';
import '../Home/home.dart';
import '../SignUp/signup.dart';

class SignInScreen extends StatefulWidget {
  
   SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  void dispose()
  {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context) => SignInCubit(),
      child: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: <Widget>[
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Sign In',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Colors.black54)),
            ),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: emailController,
                validator: (value) { 
                  if (value!.isEmpty) {
                    return 'Please enter an Email.';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "E-mail"),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top:20.0, right: 20.0,left:20.0),
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password.';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Align(
                alignment : Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                  child: const Text(
                    "New to Playtopia? Sign up",
                    style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 188, 171, 244)),
                  ),
                ),
              ),
            ),
              
            BlocConsumer<SignInCubit,SignInStates>(

              builder: (context, state) { 
                if(state is SignInLoadingState)
                {return const Center(child: CircularProgressIndicator());}
                else
                {
                    return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical:20),
                    child: SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 178, 168, 210)),
                            onPressed: () {
                              context.read<SignInCubit>().signInUser(
                                email: emailController.text.trim()
                                ,password: passwordController.text.trim()
                              );
                            },
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 16,color: background,fontWeight: FontWeight.bold
                              ),
                            ))),
                  );
                }
                 },
              listener: (BuildContext context, Object? state) { 
                if(state is SignInSuccessState)
                {
                  var snackBar = SnackBar(
                    content: Text(
                      "Welcome ${state.msg!}",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(255, 188, 171, 244),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Home(
                              //uid: "1"
                              )),
                      (route) => false);
                }
                else if(state is SignInErrorState)
                {
                  var snackBar = SnackBar(content: Text(state.msgEr!,
                        style: TextStyle(color: Colors.red)),
                    backgroundColor: background,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
                else{}
               },
              
            )
          ],
        ),
      ),
    );
  }
}