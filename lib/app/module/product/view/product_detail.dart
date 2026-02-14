import 'dart:ffi';

import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/panier/view/panier.dart';
import 'package:alarme_me/app/module/product/controller/controller.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final String img;

  ProductDetail({required this.img});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TextComponent(
          txt: "Product Detail",
          txtSize: 18,
          fw: FontWeight.bold,
        ),
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
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.img), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.star, color: Colors.deepOrange),
                Icon(Icons.star, color: Colors.deepOrange),
                Icon(Icons.star, color: Colors.deepOrange),
                Icon(Icons.star, color: Colors.grey),
                Icon(Icons.star, color: Colors.grey),

                SizedBox(width: 10),

                TextComponent(txt: "(20 Reviews)"),

                SizedBox(width: 10),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponent(
                  txt: "Man's T-shirt",
                  fw: FontWeight.bold,
                  txtSize: 20,
                ),

                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: Center(child: Icon(Icons.favorite, size: 18)),
                    ),
                    SizedBox(width: 10),

                    CircleAvatar(
                      radius: 15,
                      child: Center(child: Icon(Icons.share, size: 18)),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ],
            ),

            SizedBox(height: 10),

            TextComponent(
              txt:
                  "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page.",
            ),

            SizedBox(height: 15),

            Row(
              children: [
                Text(
                  "tk 900",
                  style: TextStyle(
                    fontSize: 16,
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 15),
                TextComponent(txt: "tk 600", fw: FontWeight.bold, txtSize: 20),
              ],
            ),

            SizedBox(height: 10),

            Divider(),

            SizedBox(height: 10),

            TextComponent(txt: "Select Size", fw: FontWeight.bold, txtSize: 20),

            SizedBox(height: 10),

            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Center(child: TextComponent(txt: "S")),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Center(child: TextComponent(txt: "M")),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Center(child: TextComponent(txt: "L")),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Center(child: TextComponent(txt: "X")),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Center(child: TextComponent(txt: "XL")),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Center(child: TextComponent(txt: "XXL")),
                ),
              ],
            ),

            SizedBox(height: 20),

            TextComponent(
              txt: "Select Colors",
              fw: FontWeight.bold,
              txtSize: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(backgroundColor: Colors.brown, radius: 20),
                SizedBox(width: 15),
                CircleAvatar(backgroundColor: Colors.grey, radius: 20),
                SizedBox(width: 15),
                CircleAvatar(backgroundColor: Colors.red, radius: 20),
                SizedBox(width: 15),
                CircleAvatar(backgroundColor: Colors.orange, radius: 20),
                SizedBox(width: 15),
                CircleAvatar(backgroundColor: Colors.pink, radius: 20),
                SizedBox(width: 15),
                CircleAvatar(backgroundColor: Colors.green, radius: 20),
              ],
            ),

            SizedBox(height: 15),

            TextComponent(txt: "Details", fw: FontWeight.bold, txtSize: 20),

            SizedBox(height: 10),

            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(text: "Description"),
                      Tab(text: "Reviews"),
                      Tab(text: "Return Policy"),
                    ],
                  ),
                  Container(
                    height: 220,
                    child: TabBarView(
                      children: [
                        Center(
                          child: TextComponent(
                            txt:
                                "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.",
                          ),
                        ),

                        Center(
                          child: TextComponent(
                            txt:
                                "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.",
                          ),
                        ),

                        Center(
                          child: TextComponent(
                            txt:
                                "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),

            Container(
              // height: 35,
              margin: EdgeInsets.only(left: 15, right: 15),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Panier()),
                  );
                },
                child: ButtonComponent(
                  txtButton: "Add to card",
                  button_color: mainColor,
                ),
              ),
            ),

            SizedBox(height: 15),

            TextComponent(
              txt: "Your may also like",
              fw: FontWeight.bold,
              txtSize: 20,
            ),

            SizedBox(height: 15),

               Wrap(
                spacing: 8,
                runSpacing: 8,
                children: List.generate(2, (index) {
                  return Container(
                    width: (MediaQuery.of(context).size.width / 2) - 20,
                    child: productBox("Panjabi", "13 Reviews", "Tk 500","Tk 1900",  "assets/images/wh1.jpg", context),
                  );
                }),
              ),

          ],
        ),
      ),
    );
  }
}
