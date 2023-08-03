import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_final_project/Model/home_model.dart';
import 'package:flutter_final_project/viewModel/Home/states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitState());
  List<HomeModel> videogames = [];
  List<HomeModel> boardgames = [];
  List<HomeModel> gamedevices = [];
  List<HomeModel> videogames1 = [];
  List<HomeModel> boardgames1 = [];
  List<HomeModel> gamedevices1 = [];
  List<HomeModel> sports = [];
  List<HomeModel> kids = [];
  List<HomeModel> buildinggames = [];
  List<HomeModel> sports1 = [];
  List<HomeModel> kids1 = [];
  List<HomeModel> buildinggames1 = [];


  void getData() {
    FirebaseFirestore.instance.collection("Video games").get().then((value) {
      for (var element in value.docs) {
        videogames.add(HomeModel.fromJson(element.data()));
      }
      emit(HomeSuccessState());
    });
    FirebaseFirestore.instance.collection("Video games 2").get().then((value) {
      for (var element in value.docs) {
        videogames1.add(HomeModel.fromJson(element.data()));
      }
      emit(HomeSuccessState());
    });
    FirebaseFirestore.instance
        .collection("Board games 2")
        .get()
        .then((value) {
      for (var element in value.docs) {
        boardgames1.add(HomeModel.fromJson(element.data()));
      }
      emit(HomeSuccessState());
    });
    FirebaseFirestore.instance.collection("Board games").get().then((value) {
      for (var element in value.docs) {
        boardgames.add(HomeModel.fromJson(element.data()));
      }
      emit(HomeSuccessState());
    });

    FirebaseFirestore.instance.collection("Game devices").get().then((value) {
      for (var element in value.docs) {
        gamedevices.add(HomeModel.fromJson(element.data()));
      }
      emit(HomeSuccessState());
    });

    FirebaseFirestore.instance.collection("Game devices 2").get().then((value) {
      for (var element in value.docs) {
        gamedevices1.add(HomeModel.fromJson(element.data()));
      }
      emit(HomeSuccessState());
    });
    FirebaseFirestore.instance.collection("Sports").get().then((value) {
      for (var element in value.docs) {
        sports.add(HomeModel.fromJson(element.data()));
      }
      emit(HomeSuccessState());
    });

    FirebaseFirestore.instance.collection("Sports 2").get().then((value) {
      for (var element in value.docs) {
        sports1.add(HomeModel.fromJson(element.data()));
      }
      emit(HomeSuccessState());
    });
    FirebaseFirestore.instance.collection("Kids games").get().then((value) {
      for (var element in value.docs) {
        kids.add(HomeModel.fromJson(element.data()));
      }
      emit(HomeSuccessState());
    });

    FirebaseFirestore.instance.collection("Kids games 2").get().then((value) {
      for (var element in value.docs) {
        kids1.add(HomeModel.fromJson(element.data()));
      }
      emit(HomeSuccessState());
    });
    FirebaseFirestore.instance.collection("Building games").get().then((value) {
      for (var element in value.docs) {
        buildinggames.add(HomeModel.fromJson(element.data()));
      }
      emit(HomeSuccessState());
    });

    FirebaseFirestore.instance.collection("Building games 2").get().then((value) {
      for (var element in value.docs) {
        buildinggames1.add(HomeModel.fromJson(element.data()));
      }
      emit(HomeSuccessState());
    });

  }
}
