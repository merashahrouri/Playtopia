import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/view/Home/Settings.dart';
import 'package:flutter_final_project/view/Home/explore.dart';
import 'package:flutter_final_project/view/Home/search.dart';
import 'package:flutter_final_project/view/Home/shoppingCart.dart';
import 'package:flutter_final_project/view/Profile/past_purchases.dart';
import 'package:flutter_final_project/view/Profile/wishlist.dart';
import 'package:flutter_final_project/viewModel/Home/cubit.dart';
import 'package:onboarding/onboarding.dart';
import '../Profile/profile.dart';
import '../SignIn/signin.dart';
import 'About.dart';
import 'category.dart';
import 'notifications.dart';

class Home extends StatefulWidget {
  // final String uid;
  Home({super.key, 
  // required this.uid
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
 

  int selectedIndex = 0;

  final List<Widget> screens = [
    ExplorePage(),
    ShoppingCart(),
    WishList(
      userID: "",
    ),
    SearchScreen(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getData(),
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    DrawerHeader(
                        child: Image.asset(
                      'assets/images/img/logo.png',
                    )),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Category()));
                      },
                      leading: const Icon(Icons.games_outlined),
                      title: const Text(
                        "Category",
                        style: TextStyle(fontSize: 14),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WishList(
                                      userID: '',
                                    )));
                      },
                      leading: const Icon(Icons.favorite_border),
                      title: const Text(
                        "Wish list",
                        style: TextStyle(fontSize: 14),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PastPurchases()));
                      },
                      leading: const Icon(Icons.history_toggle_off),
                      title: const Text(
                        "Past purchases",
                        style: TextStyle(fontSize: 14),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                      ),
                    ),
                    const Divider(
                      thickness: 1.2,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      leading: const Icon(Icons.person_2_outlined),
                      title: const Text(
                        "My Profile",
                        style: TextStyle(fontSize: 14),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home(
                                      // uid: widget.uid,
                                    )));
                      },
                      leading: const Icon(Icons.home_outlined),
                      title: const Text(
                        "Home",
                        style: TextStyle(fontSize: 14),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Settings()));
                      },
                      leading: const Icon(Icons.settings_outlined),
                      title: const Text(
                        "Settings",
                        style: TextStyle(fontSize: 14),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                      ),
                    ),
                    const Divider(
                      thickness: 1.2,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => About()));
                      },
                      leading: const Icon(Icons.info_outline),
                      title: const Text(
                        "About us",
                        style: TextStyle(fontSize: 14),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, left: 3),
                child: ListTile(
                  onTap: () {
                    FirebaseAuth.instance.signOut().then((value) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => SignInScreen(
                                )),
                        (route) => false,
                      );
                    }).catchError((e) {});
                  },
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.red,
                  ),
                  title: const Text(
                    "Sign out",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 70,
          title: Padding(
            padding: const EdgeInsets.only(right: 90.0),
            child: Image.asset(
              'assets/images/img/logo.png',
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: const Icon(
                      Icons.notifications,
                      color: background,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Notifications()));
                    },
                  )),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index){
            setState(() {
      selectedIndex = index;
    });},
          
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey,
              ),
              label: 'Shopping cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.grey,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
                color: Colors.grey,
              ),
              label: 'My Account',
            ),
          ],
        ),
        body: screens[selectedIndex]
        
      ),
    );
  }
}
