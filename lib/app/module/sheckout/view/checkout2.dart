import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/sheckout/controller/controller.dart';
import 'package:alarme_me/app/module/sheckout/view/checkout3.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class Checkout2 extends StatefulWidget {
  const Checkout2({super.key});

  @override
  State<Checkout2> createState() => _Checkout2State();
}

class _Checkout2State extends State<Checkout2> {
  List<String> methodPayment = [
    "Bank transfer",
    "Mobile Banking",
    "Card",
    "Payonner",
    "Amazone Hub Counter",
    "Apple Pay",
    "Google Pay",
  ];

  String? secletedPaymentMethod;
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
            PregressBar(stepActuel: 2),
            SizedBox(height: 20),
            TextComponent(
              txt: 'Select Payment Methods',
              fw: FontWeight.bold,
              txtSize: 18,
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black12),
              ),
              height: 420,
              child: ListView.builder(
                itemCount: methodPayment.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: TextComponent(txt: methodPayment[index]),
                        leading: Container(
                          height: 40,
                          width: 40,
                          color: mainColor,
                        ),
                        trailing: Radio(
                          value: methodPayment[index],
                          groupValue: secletedPaymentMethod,
                          onChanged: (value) => {
                            setState(() {
                              secletedPaymentMethod = value;
                            }),
                          },
                        ),
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.black12,
                      ),
                    ],
                  );
                },
              ),

           
            ),

            SizedBox(height: 20),
            Container(
              // height: 35,
              margin: EdgeInsets.only(left: 15, right: 15),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Checkout3()),
                  );
                },
                child: ButtonComponent(
                  txtButton: "Next",
                  button_color: mainColor,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
