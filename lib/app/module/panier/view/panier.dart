import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/panier/controller/controller.dart';
import 'package:alarme_me/app/module/sheckout/view/checkout.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class Panier extends StatefulWidget {
  const Panier({super.key});

  @override
  State<Panier> createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TextComponent(txt: "My Cart", txtSize: 18, fw: FontWeight.bold),
        actions: [
          Stack(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 246, 232),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(Icons.shopping_bag, size: 30),
              ),
              Positioned(
                right: 1,
                top: 0,
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextComponent(
                      txt: "3",
                      color: Colors.white,
                      txtSize: 13,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CustomProductBox("Man's T-shirt", "Classic crew neck design", "tk 600"),
            CustomProductBox("Man's jeans", "Classic crew neck design", "tk 900"),
            CustomProductBox("Kids choes", "Classic crew neck design", "tk 800"),


            SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponent(txt: "Sub total :", fw: FontWeight.bold,),
                TextComponent(txt: "tk 2300", fw: FontWeight.bold,),
              ],
            
            ) ,
            
              SizedBox(height: 50,),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Checkout()));
              },
              child: ButtonComponent(txtButton: "Checkout", button_color: mainColor,))   
          ],
        ),
      ),
    );
  }
}
