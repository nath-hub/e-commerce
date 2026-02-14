import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/form_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/home/view/home.dart';
import 'package:alarme_me/app/module/login/view/login.dart';
import 'package:alarme_me/app/module/welcome/view/welcome.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: TextComponent(
                  txt: "Forgot Password",
                  fw: FontWeight.bold,
                  txtSize: 25,
                ),
              ),

              SizedBox(height: 20),


              TextComponent(txt: "Don't worry ! it occurs. Please enter the email address linked with your account", txtSize: 15),

              SizedBox(height: 20),

              Center(child: Image.asset("assets/images/accountant.png", scale: 2)),

              SizedBox(height: 40),
        
              TextComponent(txt: "Email / Phone", txtSize: 15),
        
              SizedBox(height: 20),
        
              FormComponent(textInputType: TextInputType.emailAddress),           
        
              SizedBox(height: 20),
        
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Welcome()));
                },
                child: ButtonComponent(txtButton: "Send", button_color: mainColor)),
        
              SizedBox(height: 20),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                },
                child: Center(child: TextComponent(txt: "Back to login", color: mainColor,))),
         
            ],
          ),
        ),
      ),
    );
  }
}