import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:onboarding/onboarding.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.topLeft,
          child: Text("Notifications")),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.discount_sharp),
            title: Text(
              "Flash Sale!",
              style: TextStyle(color: background),
            ),
            subtitle: Text("Only from June 9th - June 11th, 50% sale on all board games", style: TextStyle(color: background)),
          )
])    );
  }
}