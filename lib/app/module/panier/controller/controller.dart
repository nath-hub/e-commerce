import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

CustomProductBox(
  String productName, description, price

) {
  return Column(
    children: [
      SizedBox(height: 15,),
      Row(
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: Color(0xffefefef),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(Icons.shopping_bag_outlined, color: Colors.grey, size: 40),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextComponent(
                      txt: productName,
                      fw: FontWeight.bold,
                      txtSize: 18,
                    ),
                    Icon(Icons.highlight_remove, color: Colors.grey),
                  ],
                ),
                TextComponent(
                  txt: description,
                  color: Colors.grey,
                  fw: FontWeight.bold,
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextComponent(txt: price, fw: FontWeight.bold,),
                    Row(
                      children: [
                        InkWell(
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: homeBg,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Icon(Icons.remove, size: 15,),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        TextComponent(txt: "01"),
                          SizedBox(width: 10,),
      
                           InkWell(
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: homeBg,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Icon(Icons.add, size: 15,),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 15,),
      Divider(),

      
    ],
  );
}
