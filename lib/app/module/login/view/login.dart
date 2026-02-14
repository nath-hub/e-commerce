import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/form_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/otp/view/otp.dart';
import 'package:alarme_me/app/module/welcome/view/welcome.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  txt: "Sign In Now",
                  fw: FontWeight.bold,
                  txtSize: 25,
                ),
              ),

              SizedBox(height: 40),

              TextComponent(txt: "Email / Phone", txtSize: 15),

              SizedBox(height: 20),

              FormComponent(controll: emailController,),

              SizedBox(height: 20),

              TextComponent(txt: "Password", txtSize: 15),

              SizedBox(height: 20),

              FormComponent(
                hide: true,
                textInputType: TextInputType.visiblePassword,
                controll: passwordController,
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextComponent(
                    txt: "Remember me",
                    color: Colors.black38,
                    txtSize: 14,
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const Otp(), // Remplacez par votre classe de destination
                        ),
                      );
                    },
                    child: TextComponent(
                      txt: "Forgot password",
                      color: mainColor,
                      txtSize: 14,
                      fw: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              InkWell(
                onTap: (){
                  print(emailController.text);
                  print(passwordController.text);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Welcome()));
                },
                child: ButtonComponent(txtButton: "Login", button_color: mainColor)),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 100,
                      color: Colors.black38,
                    ),
                  ),
                  SizedBox(width: 20),
                  TextComponent(txt: "Or contunie with"),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 100,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Center(child: TextComponent(txt: "Google")),
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: mainColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      child: Center(child: TextComponent(txt: "Google")),
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: mainColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextComponent(
                    txt: "Don't have any account ? ",
                    fw: FontWeight.bold,
                  ),
                  TextComponent(
                    txt: "Sign up ",
                    color: mainColor,
                    fw: FontWeight.bold,
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
