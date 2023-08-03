import 'package:flutter/material.dart';

class LastOrder extends StatelessWidget {
  const LastOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Details")),
      body:ListView(children: [
        ListTile(
          leading: Icon(
            Icons.shopping_cart,
            size: 40,
          ),
          title: Text(
            "Delivered",
            style: TextStyle(fontSize: 26, color: Colors.green),
          ),
          subtitle: Text("Order ID: 1140221589"),
        ),
        ListTile(
          leading: Icon(
            Icons.location_city,
            size: 30,
          ),
          title: Text(
            "Delivery address",
          ),
          subtitle: Text("Amman, Jordan - Khalda - AlBahhath street"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0, vertical: 5),
          child: Text("Order summary",style: TextStyle(fontSize: 26,)),
        ),
         ListTile(
          leading: Text("1x"),
          title: Text(
            "Fortnite",
          ),
          trailing:Text("32 jd")
        ),
          ListTile(
            leading: Text("1x"),
            title: Text(
              "Catan board game",
            ),
            trailing: Text("47 jd")),
        ListTile(
            leading: Text("3x"),
            title: Text(
              "Fire Car Truck toys",
            ),
            trailing: Text("41 jd")),
            ListTile(
            
            title: Text(
              "Service fee",
            ),
            trailing: Text("0.90 jd")),
        ListTile(
            title: Text(
              "Delivery fee",
            ),
            trailing: Text("2 jd")),     
            
      ],)
    );
  }
}