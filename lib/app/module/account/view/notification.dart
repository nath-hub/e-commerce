import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/product/view/product.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextComponent(
          txt: "Notification",
          fw: FontWeight.bold,
          txtSize: 25,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: homeBg,
              child: Icon(
                Icons.notifications_off_outlined,
                size: 80,
                color: mainColor,
              ),
            ),
            SizedBox(height: 20),

            TextComponent(
              txt: "No Notification Here",
              txtSize: 25,
              fw: FontWeight.bold,
            ),

            SizedBox(height: 20),

            TextComponent(
              txt: "There is no notification to\nshow right now !",
              txtSize: 16,
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20),

            Container(
              // height: 35,
              margin: EdgeInsets.only(left: 15, right: 15),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Product()),
                  );
                },
                child: ButtonComponent(
                  txtButton: "Go Back to Home",
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
