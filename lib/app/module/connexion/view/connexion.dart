import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/form_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class Connexion extends StatefulWidget {
  const Connexion({super.key});

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {

TextEditingController email = TextEditingController();
TextEditingController phone = TextEditingController();
TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
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
                  txt: "Sign Up Now",
                  fw: FontWeight.bold,
                  txtSize: 25,
                ),
              ),
        
              SizedBox(height: 40),
        
              TextComponent(txt: "Email", txtSize: 15),
        
              SizedBox(height: 20),
        
              FormComponent(),
        
                SizedBox(height: 40),
        
              TextComponent(txt: "Phone Number", txtSize: 15),
        
              SizedBox(height: 20),
        
              FormComponent(textInputType: TextInputType.phone),
        
              SizedBox(height: 20),
        
              TextComponent(txt: "Password", txtSize: 15),
        
              SizedBox(height: 20),
        
              FormComponent(
                hide: true,
                textInputType: TextInputType.visiblePassword,
              ),
        
              SizedBox(height: 20),
        
            
        
              SizedBox(height: 20),
        
              ButtonComponent(txtButton: "Sign up", button_color: mainColor),
        
              SizedBox(height: 20),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(child: Container(height: 1, width: 100, color: Colors.black38)),
                  SizedBox(width: 20),
                  TextComponent(txt: "Or contunie with"),
                  SizedBox(width: 20),
                  Expanded(child: Container(height: 1, width: 100, color: Colors.black38)),
                ],
              ),
        
              SizedBox(height: 20),
        
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Center(
                        child: TextComponent(txt: "Google"),
                      ),
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: mainColor,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                   Expanded(
                    child: Container(
                      child: Center(
                        child: TextComponent(txt: "Facebook"),
                      ),
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: mainColor,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                ],
              ),
         
        
            ],
          ),
        ),
      ),
    );
  }
}