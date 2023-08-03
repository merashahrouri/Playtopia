import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_final_project/Model/Item.dart';
import 'package:flutter_final_project/viewModel/cart/states.dart';

class CartCubit extends Cubit<CartStates> {
  CartCubit() : super(CartInitState());
  List<ItemsModel> cart = [];
  List<ItemsModel> wishlist = [];

void addToCart(
    String? uid, String? name, String? price, String? image) {
  FirebaseFirestore.instance.collection("Cart").doc(uid).set({
    "name": name,
    "price": price,
    "image": image,
    "uid": uid
  }).then((value) {
    emit(CartSuccessState());
  }).catchError((onError) {
    emit(CartErrorState());
  });
}
void deletefromCart(String? uid, String? name, String? price, String? image) {
    FirebaseFirestore.instance
        .collection("Cart")
        .doc(uid)
        .delete().then(
            (value) {
      emit(CartSuccessState());
    }).catchError((onError) {
      emit(CartErrorState());
    });
  }
void addToWishlist(String? uid, String? name, String? price,
      String? image) {
    FirebaseFirestore.instance.collection("Wishlist").doc(uid).set({
      "name": name,
      "price": price,
      "image": image,
      "uid": uid
    }).then((value) {
      emit(CartSuccessState());
    }).catchError((onError) {
      emit(CartErrorState());
    });
  }

void getCartItems() {
  FirebaseFirestore.instance.collection("Cart").get().then((value) {
    for (var element in value.docs) {
      cart.add(ItemsModel.fromJson(element.data()));
    }
    log(cart[1].name.toString());
  }).catchError((onError) {});
}
void getWishlistItems() {
    FirebaseFirestore.instance.collection("WishList").get().then((value) {
      for (var element in value.docs) {
        wishlist.add(ItemsModel.fromJson(element.data()));
      }
      log(cart[1].name.toString());
    }).catchError((onError) {});
  }

}