import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/category/view/category_detail.dart';
import 'package:alarme_me/app/module/panier/view/panier.dart';
import 'package:alarme_me/app/module/product/view/product_detail.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

bool isMan = true;

bool isKids = false;

CategorieBox(String product, String image, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CategoryDetail(productName: product),
        ),
      );
    },
    child: Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: greyColor,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(height: 5),
          TextComponent(txt: product, txtSize: 12),
        ],
      ),
    ),
  );
}

productBox(
  String productName,
  productReview,
  pricePromo,
  priceNormal,
  image,
  BuildContext context,
) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProductDetail()),
      );
    },

    child: Card(
      color: Colors.white,
      child: Container(
        height: 350,
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: greyColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
            SizedBox(width: 20),

            TextComponent(txt: productName, fw: FontWeight.bold),
            SizedBox(height: 10),

            Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.deepOrange, size: 15),
                      Icon(Icons.star, color: Colors.deepOrange, size: 15),
                      Icon(Icons.star, color: Colors.deepOrange, size: 15),
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 160, 160, 160),
                        size: 15,
                      ),
                    ],
                  ),

                  TextComponent(
                    txt: productReview,
                    txtSize: 14,
                    fw: FontWeight.bold,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextComponent(
                    txt: pricePromo,
                    fw: FontWeight.bold,
                    txtSize: 14,
                  ),
                  SizedBox(width: 15),
                  // TextComponent(txt: priceNormal, txtSize: 13,),
                  Text(
                    priceNormal,
                    style: TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Container(
              height: 35,
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
          ],
        ),
      ),
    ),
  );
}
