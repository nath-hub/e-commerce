import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/connexion/view/connexion.dart';
import 'package:alarme_me/app/module/login/view/login.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: homeBg),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        color: homeBg,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Column(
          children: [
            TextComponent(txt: "Welcome", txtSize: 30, fw: FontWeight.bold),
            TextComponent(txt: "MainMode Shopping House", txtSize: 18),
            SizedBox(height: 10),

            Image.asset("assets/images/shopping.jpg", scale: 1.5),

            SizedBox(height: 10),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Connexion()));
              },
              child: ButtonComponent(txtButton: "Sign up", button_color: mainColor)),

            SizedBox(height: 15),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: ButtonComponent(
                txtButton: "Login",
                button_color: logginButtonColor,
              ),
            ),

            SizedBox(height: 35),

            TextComponent(txt: "Not thanks"),
          ],
        ),
      ),
    );
  }
}

 
