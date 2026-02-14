import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/product/controller/controller.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class Filtre extends StatefulWidget {
  const Filtre({super.key});

  @override
  State<Filtre> createState() => _FiltreState();
}

class _FiltreState extends State<Filtre> {
  bool all = true;
  bool nike = false;
  bool bata = false;
  bool adidas = false;

  bool allGender = true;

  bool men = false;
  bool kids = false;

  final List<String> category = [
    "Cliquer ici pour choisir",
    "T-shirt",
    "Jeans",
    "Shoes",
    "Panjabi",
    "Watches",
  ];

  bool allSize = true;
  bool size5 = false;
  bool size10 = false;
  bool size24 = false;

  String selectValue = "Cliquer ici pour choisir";

  double _currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: TextComponent(txt: "Filtrer", fw: FontWeight.bold, txtSize: 19),
        actions: [Icon(Icons.delete), SizedBox(width: 15)],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 17, right: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextComponent(txt: "Brands", fw: FontWeight.bold, txtSize: 17),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            all = true;
                            nike = bata = adidas = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          height: 35,
                          decoration: BoxDecoration(
                            color: all ? mainColor : Colors.white,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponent(
                              txt: "All",
                              color: all ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),

                      InkWell(
                        onTap: () {
                          setState(() {
                            nike = true;
                            all = bata = adidas = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 35,
                          decoration: BoxDecoration(
                            color: nike ? mainColor : Colors.white,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponent(
                              txt: "Nike",
                              color: nike ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 15),

                      InkWell(
                        onTap: () {
                          setState(() {
                            bata = true;
                            nike = all = adidas = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 35,
                          decoration: BoxDecoration(
                            color: bata ? mainColor : Colors.white,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponent(
                              txt: "Bata",
                              color: bata ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 15),

                      InkWell(
                        onTap: () {
                          setState(() {
                            adidas = true;
                            nike = bata = all = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 35,
                          decoration: BoxDecoration(
                            color: adidas ? mainColor : Colors.white,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponent(
                              txt: "Adidas",
                              color: adidas ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),

            TextComponent(txt: "Gender", fw: FontWeight.bold, txtSize: 17),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            allGender = true;
                            men = kids = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 35,
                          decoration: BoxDecoration(
                            color: allGender ? mainColor : Colors.white,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponent(
                              txt: "All",
                              color: allGender ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),

                      InkWell(
                        onTap: () {
                          setState(() {
                            men = true;
                            allGender = kids = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 35,
                          decoration: BoxDecoration(
                            color: men ? mainColor : Colors.white,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponent(
                              txt: "Men",
                              color: men ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 15),

                      InkWell(
                        onTap: () {
                          setState(() {
                            kids = true;
                            men = allGender = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 35,
                          decoration: BoxDecoration(
                            color: kids ? mainColor : Colors.white,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponent(
                              txt: "Kids",
                              color: kids ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),

            TextComponent(
              txt: "Select Product",
              fw: FontWeight.bold,
              txtSize: 17,
            ),
            SizedBox(height: 15),

            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(20),
              ),
              child: DropdownButton(
                value: selectValue,
                isExpanded: true,
                borderRadius: BorderRadius.circular(20),
                items: category.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectValue = value!;
                  });
                },
              ),
            ),

            SizedBox(height: 15),

            TextComponent(txt: "Select Size", fw: FontWeight.bold, txtSize: 17),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            allSize = true;
                            size5 = size10 = size24 = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 35,
                          decoration: BoxDecoration(
                            color: allSize ? mainColor : Colors.white,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponent(
                              txt: "All",
                              color: allSize ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),

                      InkWell(
                        onTap: () {
                          setState(() {
                            size5 = true;
                            allSize = size10 = size24 = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 35,
                          decoration: BoxDecoration(
                            color: size5 ? mainColor : Colors.white,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponent(
                              txt: "5ln",
                              color: size5 ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 15),

                      InkWell(
                        onTap: () {
                          setState(() {
                            size10 = true;
                            size5 = allSize = size24 = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 35,
                          decoration: BoxDecoration(
                            color: size10 ? mainColor : Colors.white,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponent(
                              txt: "10ln",
                              color: size10 ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 15),

                      InkWell(
                        onTap: () {
                          setState(() {
                            size24 = true;
                            size5 = size10 = allSize = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 35,
                          decoration: BoxDecoration(
                            color: size24 ? mainColor : Colors.white,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: TextComponent(
                              txt: "24.5ln",
                              color: size24 ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),

            TextComponent(txt: "Price", fw: FontWeight.bold, txtSize: 17),
            SizedBox(height: 15),

            Slider(
              thumbColor: Colors.white,
              activeColor: mainColor,
              inactiveColor: Colors.black12,

              value: _currentSliderValue,
              min: 0,
              max: 100,
              divisions: 2,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),

            SizedBox(height: 15),

            TextComponent(
              txt: "Select Color",
              fw: FontWeight.bold,
              txtSize: 17,
            ),
            SizedBox(height: 15),

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

            SizedBox(height: 35),
            ButtonComponent(txtButton: "Filter Now", button_color: mainColor),
          ],
        ),
      ),
    );
  }
}
