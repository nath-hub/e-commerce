import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/form_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/account/view/account.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextComponent(txt: "Edit Profile", fw: FontWeight.bold),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(radius: 70),

                    TextComponent(
                      txt: "Nathe Flore",
                      fw: FontWeight.bold,
                      txtSize: 20,
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20),

            TextComponent(txt: "Email : ", fw: FontWeight.bold, txtSize: 20),

            SizedBox(height: 20),

            FormComponent(textInputType: TextInputType.emailAddress),

            SizedBox(height: 20),

            TextComponent(txt: "Password : ", fw: FontWeight.bold, txtSize: 20),

            SizedBox(height: 20),

            FormComponent(
              textInputType: TextInputType.visiblePassword,
              hide: true,
            ),

            SizedBox(height: 40),

           
             Container(
              // height: 35,
              margin: EdgeInsets.only(left: 15, right: 15),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Account()),
                  );
                },
                child: ButtonComponent(
                  txtButton: "Save",
                  button_color: mainColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
