import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/splash/controller/controller.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState(); 

    time(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 300,
          width: 250,

          child: Column(
            children: [
              Image.asset("assets/images/logo.avif", scale: 3),
              TextComponent(txt: "MainMode", txtSize: 30, fw: FontWeight.bold),
              TextComponent(txt: "Fashion House", txtSize: 20),
            ],
          ),
        ),
      ),
    );
  }
}
