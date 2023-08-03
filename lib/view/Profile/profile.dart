import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/view/Profile/past_purchases.dart';
import 'package:flutter_final_project/view/Profile/wishlist.dart';

import '../../viewModel/SignUpBloc/cubit.dart';
import '../../viewModel/SignUpBloc/states.dart';
import 'edit_profile.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SignupCubit(),
      child: Scaffold(
        
        body: BlocConsumer<SignupCubit, SignupStates>(
          builder: (context, state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Align
                      (alignment: Alignment.centerLeft,
                        child: Text("Hi, Mera!",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: ListTile(
                        title: const Text(
                          "Your Wishlist",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WishList(
                                    userID: "1",
                                  ),
                                ));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: ListTile(
                        title: const Text(
                          "Your past purchases",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PastPurchases(),
                                ));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: ListTile(
                          title: const Text(
                            "Edit your profile",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                //
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const EditProfile(),
                                    ));
                              },
                              icon: const Icon(Icons.arrow_forward_ios))),
                    )
                  ],
                );
              },
              itemCount: 1,
            );
          },
          listener: (BuildContext context, Object? state) {},
        ),
      ),
    );
  }
}
