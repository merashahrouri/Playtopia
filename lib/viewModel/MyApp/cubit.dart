import 'package:bloc/bloc.dart';
import 'package:flutter_final_project/viewModel/MyApp/states.dart';

class MyAppCubit extends Cubit<MyAppStates>
{
  MyAppCubit(): super(MyAppInitState());
  
  bool darktheme = true;
  
  void Changetheme(bool toggle) {
    darktheme = toggle;
    emit(ThemeChangedState());
  }
}