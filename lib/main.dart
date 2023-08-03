
import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final_project/Services/Bloc/bloc_s.dart';
import 'package:flutter_final_project/view/SplashScreen/splashScreen.dart';
import 'package:onboarding/onboarding.dart';

Future<void> main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await EasyLocalization.ensureInitialized();
  
  runApp(EasyLocalization(path: 'assets/lang',
  supportedLocales: const [
    Locale('en', 'US'), Locale('ar', 'DZ')],
      fallbackLocale: Locale('en',
          'US'), 
  child:  MyApp()));
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primaryIconTheme: IconThemeData(color: Color.fromARGB(255, 178, 168, 210)),
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 178, 168, 210)),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: background),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: background,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              
            ),),
        primaryColor: const Color.fromARGB(255, 178, 168, 210),
        primarySwatch: Colors.grey,
      ),
      home:  SplashScreen(),
    );
  }
}
