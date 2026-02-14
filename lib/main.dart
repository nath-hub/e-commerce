import 'package:alarme_me/app/module/splash/view/splash.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';  
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //enlever le mode debug
      theme: ThemeData(
        // fontFamily: 'Angelia',
        colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
        
          primaryColor: Colors.deepOrange,
          
        ),
      

      home: Splash(),
    );
  }
}
