import 'package:alarme_me/app/module/home/view/home.dart';
import 'package:flutter/material.dart';

void time(BuildContext context){
  Future.delayed(Duration(seconds: 4),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
  });
}