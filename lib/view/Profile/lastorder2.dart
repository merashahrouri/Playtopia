import 'package:flutter/material.dart';

class LastOrder2 extends StatelessWidget {
  const LastOrder2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Details")),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                size: 40,
              ),
              title: Text(
                "Canceled",
                style: TextStyle(fontSize: 26, color: Colors.red),
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
              child: Text("Order summary",
                  style: TextStyle(
                    fontSize: 26,
                  )),
            ),
            ListTile(
                leading: Text("1x"),
                title: Text(
                  "Call of duty",
                ),
                trailing: Text("43 jd")),
            ListTile(
                leading: Text("1x"),
                title: Text(
                  "Fifa 23",
                ),
                trailing: Text("43 jd")),
          ],
        ));
  }
}
