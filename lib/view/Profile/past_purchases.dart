import 'package:flutter/material.dart';
import 'package:flutter_final_project/view/Profile/lastorder.dart';
import 'package:flutter_final_project/view/Profile/lastorder2.dart';

class PastPurchases extends StatefulWidget {
  PastPurchases({super.key});

  @override
  State<PastPurchases> createState() => _PastPurchasesState();
}

class _PastPurchasesState extends State<PastPurchases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Align(alignment: Alignment.topLeft, child: Text("Your past purchases")),
        ),
        body: ListView(children: [
          ListTile(leading: Icon(Icons.shopping_cart,size: 40,),title: Text("Delivered",style: TextStyle(fontSize: 26,color: Colors.green),),
          trailing: IconButton(
               icon: Icon(Icons.arrow_forward_ios), onPressed: () {  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LastOrder())); },
              
            ),subtitle: Text("Order ID: 1140221589"),),
            ListTile(title: Text("Re-Order", style: TextStyle(color: Color.fromARGB(255, 178, 168, 210)),),),
            ListTile(
            leading: Icon(
              Icons.remove_shopping_cart,
              size: 40,
            ),
            title: Text(
              "Canceled",
              style: TextStyle(fontSize: 26, color: Colors.red),
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LastOrder2()));
              },
            ),
            subtitle: Text("Order ID: 1140987643"),
          ),
          ListTile(
            title: Text(
              "Re-Order",
              style: TextStyle(color: Color.fromARGB(255, 178, 168, 210)),
            ),
          ),

        ]));
  }
}
