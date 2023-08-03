import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onboarding/onboarding.dart';
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
    return ListTile(
      leading: SizedBox(
          height: 70,
          width: 60,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                "$image",
                fit: BoxFit.cover,
              ))),
      onTap: () {
        click;
      },
      title: Text(
        "$name",
        style: TextStyle(color: background),
      ),
      subtitle: Text("${price} jd",
          style: TextStyle(color: background)),
    );
  }
}
