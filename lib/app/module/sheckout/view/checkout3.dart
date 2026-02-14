import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/sheckout/controller/controller.dart';
import 'package:alarme_me/app/module/sheckout/view/checkout4.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class Checkout3 extends StatefulWidget {
  const Checkout3({super.key});

  @override
  State<Checkout3> createState() => _Checkout3State();
}

class _Checkout3State extends State<Checkout3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TextComponent(txt: "Checkout", fw: FontWeight.bold, txtSize: 18),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PregressBar(stepActuel: 3),
            SizedBox(height: 20),
            Center(
              child: TextComponent(
                txt: 'Mobile Banking',
                fw: FontWeight.bold,
                txtSize: 18,
              ),
            ),
            SizedBox(height: 20),

            Container(
              height: 500,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: homeBg,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  );
                },
              ),
            ), 

             Container(
              // height: 35,
              margin: EdgeInsets.only(left: 15, right: 15),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Checkout4()),
                  );
                },
                child: ButtonComponent(
                  txtButton: "Next",
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
