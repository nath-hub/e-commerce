import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/product/view/product.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class Paymentstatus extends StatefulWidget {
  const Paymentstatus({super.key});

  @override
  State<Paymentstatus> createState() => _PaymentstatusState();
}

class _PaymentstatusState extends State<Paymentstatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TextComponent(txt: "Payment", fw: FontWeight.bold, txtSize: 18),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 141, 6),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Icon(Icons.check, size: 100, color: Colors.white),
              ),
            ),

            SizedBox(height: 30),

            TextComponent(
              txt: "Payment Successful !",
              txtSize: 24,
              fw: FontWeight.bold,
            ),
            SizedBox(height: 15),
            TextComponent(txt: "Thank for your purchase", txtSize: 14),

            SizedBox(height: 40),

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
                  txtButton: "Back to Home",
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
