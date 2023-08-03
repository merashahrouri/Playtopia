import 'package:flutter/material.dart';
import 'package:flutter_final_project/view/Home/explore.dart';
import 'package:onboarding/onboarding.dart';
class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Align(
        alignment: Alignment.centerLeft,
        child: Text("Payment"))),
        body: ListView(children: 
         [
             ListTile(
              title: Text(
                "Delivery address",
              ),
              subtitle: Text("Amman, Jordan - Khalda - AlBahhath street"),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
              child: Text("Order summary",
                  style: TextStyle(
                    fontSize: 22,
                  )),
            ),
            ListTile(
                leading: Text("1x"),
                title: Text(
                  "Fortnite",
                ),
                trailing: Text("32 jd")),
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
                Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
              child: Text("Payment summary",
                  style: TextStyle(
                    fontSize: 22,
                  )),
            ),
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
                ListTile(
                title: Text(
                  "Total",
                    style: TextStyle(
                      fontSize: 20,
                    )
                ),
                trailing: Text("122.90 jd",style: TextStyle(
                    fontSize: 18,))),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                     EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 1,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 178, 168, 210)),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ExplorePage()));
                                  var snackBar = SnackBar(
                            content: Text(
                              "Order confirmed",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            backgroundColor: Color.fromARGB(255, 178, 168, 210),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: const Text(
                          "Pay now",
                          style: TextStyle(
                              fontSize: 16,
                              color: background,
                              fontWeight: FontWeight.w700),
                        ))),
              ),
            )
          ],
        ));
  }
}
