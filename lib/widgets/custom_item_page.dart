import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class CustomItemPage extends StatefulWidget {
  final String? path;
  final String? name;
  final String? describtion;
  final String? pr;
  final void Function()? click;
  const CustomItemPage({super.key,
    this.path,
    this.name,
    this.describtion,
    this.pr,
    required this.click,
  });

  @override
  State<CustomItemPage> createState() => _CustomItemPageState();
}

class _CustomItemPageState extends State<CustomItemPage> {
   String? imagePath;
  String? itemName;
  String? describtion;
  String? pr;
  void Function()? click;
  @override
  void initState() {
    imagePath = widget.path;
    itemName = widget.name;
    describtion = widget.describtion;
    
    pr = widget.pr;
    click = widget.click;
    super.initState();
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Details",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ),
      body:ListView(
        children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Image.network(
                "$imagePath",
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text(
                  "$itemName",
                  style: TextStyle(
                      letterSpacing: 0,
                      
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text("$describtion"),
              ),
            ),
            Padding(
                    padding: const EdgeInsets.only(top: 20.0,left: 20),
                    child: Text(
                      "$pr JD ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, bottom: 10, left: 30,right:30),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Add to cart",style: TextStyle(
                        fontSize: 16,color: background,fontWeight: FontWeight.bold
                      ),),
                      style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 178, 168, 210)),
                ),
            ),
          ],
        ),
      );
    
  }
}
