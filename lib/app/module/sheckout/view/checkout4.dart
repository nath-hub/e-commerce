import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/sheckout/controller/controller.dart';
import 'package:alarme_me/app/module/sheckout/view/paymentStatus.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class Checkout4 extends StatefulWidget {
  const Checkout4({super.key});

  @override
  State<Checkout4> createState() => _Checkout4State();
}

class _Checkout4State extends State<Checkout4> {
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
            PregressBar(stepActuel: 4),
            SizedBox(height: 20),
            Center(
              child: TextComponent(
                txt: 'Nagad',
                fw: FontWeight.bold,
                txtSize: 18,
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponent(txt: "Main Amount", fw: FontWeight.bold),
                TextComponent(txt: "24000 tk"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponent(txt: "Processing Fees", fw: FontWeight.bold),
                TextComponent(txt: "12 tk"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponent(txt: "Total Amount", fw: FontWeight.bold),
                TextComponent(txt: "2412 tk"),
              ],
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),

            Center(
              child: TextComponent(txt: "Your nagad Account NUmber", fw: FontWeight.bold , txtSize: 18,),
            ),
            SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "01200-000000",
              ),
              keyboardType: TextInputType.number,
            ),

            SizedBox(height: 40),


             Container(
              // height: 35,
              margin: EdgeInsets.only(left: 15, right: 15),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Paymentstatus()),
                  );
                },
                child: ButtonComponent(
                  txtButton: "Confirm",
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
