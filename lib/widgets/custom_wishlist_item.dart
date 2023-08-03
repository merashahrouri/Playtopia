import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onboarding/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../viewModel/MyApp/cubit.dart';
import '../viewModel/cart/cubit.dart';

class CustomCartItem extends StatefulWidget {
  final String? name;
  final String? price;
  final String? image;

  final void Function() click;
  const CustomCartItem({
    super.key,
    this.name,
    this.price,
    this.image,
    required this.click,
  });

  @override
  State<CustomCartItem> createState() => _CustomCartItemState();
}

class _CustomCartItemState extends State<CustomCartItem> {
  String? name;
  String? price;
  String? image;

  bool isFavorite = false;

  void Function()? click;
  @override
  void initState() {
    name = widget.name;
    price = widget.price;
    image = widget.image;
    click = widget.click;
    super.initState();
  }

void _addToWishlist(BuildContext context, String uid) {
    final wishlistCubit = context.read<CartCubit>();
    wishlistCubit.addToWishlist(uid, name, price, image);
  }


  @override
  Widget build(BuildContext context) {
    return Column(
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
                            child: Image.network("$image",fit: BoxFit.cover,))),
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
          ), Padding(
        padding: const EdgeInsets.only(left:25,top:3.0),
        child: Align(
          alignment: Alignment.centerLeft, child: Text("$name", style:const TextStyle( fontSize: 20) ,)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 3.0,left:25),
        child: Text("${price} jd",
            style: const TextStyle(fontSize: 16),
          ),
      )
      ],
    );
  }
}
