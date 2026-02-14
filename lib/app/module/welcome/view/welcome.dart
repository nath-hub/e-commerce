import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/product/view/product.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            TextComponent(txt: "Lets get started with shopping !", fw: FontWeight.bold, txtSize: 28, textAlign: TextAlign.center),

            SizedBox(height: 20,),

            TextComponent(txt: "Find it here, bay it now", txtSize: 19, textAlign: TextAlign.center),
            SizedBox(height: 20,),

            Image.asset("assets/images/welcome1.jpg"),  

            SizedBox(height: 90,),

            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Product()));
              },
              child: ButtonComponent(txtButton: "Get tarted", button_color: mainColor,))
          ],
        ),
      ),
    );
  }
}