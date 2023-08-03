import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_final_project/viewModel/Profile/states.dart';

import '../../Model/Item.dart';


class ProfileCubit extends Cubit<ProfileStates>{

  ProfileCubit ():super(ProfileInitState());
  List<ItemsModel> wishList = [];

  void getWishList(String userID) {
    emit(ProfileLoadingState());
    FirebaseFirestore.instance
        .collection("WishList")
        .doc(userID)
        .collection("WishList")
        .get()
        .then((value) {
      value.docs.forEach((element) {
        wishList.add(
            ItemsModel.fromJson(element.data() as Map<String, dynamic>));
      });
      print(wishList[0]);
    }).then((value) {
      emit(ProfileSuccessState());
    }).catchError((onError) {
      print(onError);
      emit(ProfileErrorState());
    });
  }
}
