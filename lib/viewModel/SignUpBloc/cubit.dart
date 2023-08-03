import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_final_project/viewModel/SignUpBloc/states.dart';

import '../../Model/user_signin.dart';

class SignupCubit extends Cubit<SignupStates> {
  SignupCubit() : super(SignUpInitState());
List<UserModel> users = [];

  void getData() {
    //
    FirebaseFirestore.instance.collection("Users").get().then((value) {
      for (var element in value.docs) {
        users.add(UserModel.fromJson(element.data()));
      }
      emit(SignUpSuccessfulState());
    });
    FirebaseFirestore.instance
        .collection("Users")
        .get()
        .then((value) {
      for (var element in value.docs) {
        users.add(UserModel.fromJson(element.data()));
      }
      emit(SignUpSuccessfulState());
    });
  }
  void signUpUser({
    String? email,
    String? password,
    String? name,
    String? phone,
    String? confirmPassword,
    String? address
  }) {
    emit(SignUpLoadingState());
    
        if (password == confirmPassword) {
      FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!)
        .then((value) {
          saveData(email, value.user!.uid.toString(), name, phone, address);
        })
        .catchError((onError){
          emit(SignUpErrorState(onError.toString()));
          log(onError.toString());
        });
    } else {
      emit(SignUpErrorState('Passwords do not match.'));
    }
  }
  void saveData(
    String? email,
    String? uid,
    String? name,
    String? phone,
    String? address
  ){
    FirebaseFirestore.instance
        .collection("Users")
        .doc(uid)
        .set({
          "name": name,
          "email": email,
          "phone": phone,
          "address": address,
          "uid": uid
        })
        .then((value) {
          emit(SignUpSuccessfulState(msg:email));
        })
        .catchError((onError) {
          emit(SignUpErrorState(onError.toString()));
        });
  }
  void getUsers() {
    FirebaseFirestore.instance.collection("Users").get().then((value) {
      for (var element in value.docs) {
        users.add(UserModel.fromJson(element.data()));
      }
    }).catchError((onError) {
    });
  }
    void signUpAddress(String country, String address, String id) {
    emit(SignUpLoadingState());

    FirebaseFirestore.instance.collection("Users").doc(id).set({
      "country": country,
      "address": address,
    }).then((value) {
      emit(SignUpSuccessfulState());
    }).catchError((onError) {
      emit(SignUpErrorState(onError));
    });
  }
  
  void updateAddress(String country, String address, String id) {
    emit(SignUpLoadingState());

    FirebaseFirestore.instance.collection("Users").doc(id).update({
      "country": country,
      "address": address,
    }).then((value) {
      emit(SignUpSuccessfulState());
    }).catchError((onError) {
      emit(SignUpErrorState(onError));
    });
  }
  Future<String> getUserID() async {
    User? user = FirebaseAuth.instance.currentUser;
String ?userID;
    if (user != null) {
      userID = user.uid;
      print('User ID: $userID');
    } else {
      print('User is not logged in');
    }
return userID!;
  }

}