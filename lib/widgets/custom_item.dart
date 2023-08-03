import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/viewModel/cart/cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../viewModel/MyApp/cubit.dart';


class CustomItem extends StatefulWidget {
  final String? path;
  final String? name;
  final String? pr;
  

  final void Function() click;
  const CustomItem({super.key, this.path,this.name,this.pr, required this.click,
  });

  @override
  State<CustomItem> createState() => _CustomItemState();
}

class _CustomItemState extends State<CustomItem> {
  String? imagePath;
  String? itemName;
  String? price;
  
  bool isFavorite = false;

  void Function()?click;
  @override
  void initState() {
    imagePath = widget.path;
    itemName = widget.name;
    price = widget.pr;
    click = widget.click;
    loadFavoriteState();
    super.initState();
  }
  Future<void> loadFavoriteState() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  setState(() {
    isFavorite = prefs.getBool('is_favorite') ?? false;
  });
}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      GestureDetector(onTap: click,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:10.0, bottom:10,left: 20),
              child: Container(
                 height: 190,
                    width: 180,
                child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network("$imagePath",fit: BoxFit.cover,))),
            ),
      
            Padding(
              padding: const EdgeInsets.only(left:155.0, top:19),
              child: 
              CircleAvatar(backgroundColor: Colors.white, radius: 19,
              child: IconButton(
                alignment: Alignment.topRight,
                onPressed:() async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      setState(() {
                        isFavorite = !isFavorite;
                        prefs.setBool('is_favorite', isFavorite);
                      });
                    },
                    icon:Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite? const Color.fromARGB(255, 178, 168, 210):Colors.black
               )
              ),),
            )
          ],
        ),
      ),
      
      Padding(
        padding: const EdgeInsets.only(left:25,top:3.0),
        child: Align(
          alignment: Alignment.centerLeft, child: Text("$itemName", style:const TextStyle( fontSize: 20) ,)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 3.0,left:25),
        child: Text("${price} jd",
            style: const TextStyle(fontSize: 16),
          ),
      )

    ],);
  }
}