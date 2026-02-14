import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/account/view/account.dart';
import 'package:alarme_me/app/module/filtre/view/filtre.dart';
import 'package:alarme_me/app/module/panier/view/panier.dart';
import 'package:alarme_me/app/module/product/controller/controller.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {

List<String> ProductName = [
 "T-shirt Classic", "T-shirt V-Neck", "T-shirt Oversize", "T-shirt Sport", "T-shirt Polo", 
 "T-shirt Graphic", "T-shirt Slim", "T-shirt Cotton", "T-shirt Summer",
  // 3 Pantalons (Jeans)
  "Jeans Blue", "Jeans Black", "Pantalon Chino",
  // 6 Montres
  "Watch Silver", "Watch Sport", "Watch Gold", "Watch Smart", "Watch Leather", "Watch Minimalist",
  // 4 Chaussures
  "Running Shoes", "Casual Sneakers", "Leather Boots", "Sport Shoes",
  // 1 Accessoire
  "Accessoire Mode",
  // 5 Divers pour compléter à 28
  "Blouse Médicale", "Short Cargo", "Veste Légère", "Sweat Hoodie",
    // 5 Divers (Ajoutés pour arriver à 28)
  "Blouse Médicale", "Short Cargo", "Veste Légère", "Sweat Hoodie", "Ceinture Cuir"
];


List<String> ProductImg = [
  // T-shirts
  "assets/images/tsh1.jpg", "assets/images/tsh2.jpg", "assets/images/tsh3.jpg", "assets/images/tsh4.jpg", 
  "assets/images/tsh5.jpg", "assets/images/tsh6.jpg", "assets/images/tsh7.jpg", "assets/images/tsh8.jpg", 
  "assets/images/tsh9.jpg",
  // Jeans
  "assets/images/jean.jpg", "assets/images/jean1.jpg", "assets/images/jean2.jpg", "assets/images/jean3.jpg", 
  "assets/images/jean5.jpg", "assets/images/jean4.jpg", "assets/images/jean6.jpg",
  // Montres
  "assets/images/wath.jpg", "assets/images/wh1.jpg", "assets/images/wh2.jpg", "assets/images/wh3.jpg",
   "assets/images/wh4.jpg", "assets/images/wh5.jpg",
  // Chaussures
  "assets/images/shoe1.jpg", "assets/images/shoe2.jpg", "assets/images/shoe.jpg", "assets/images/shoe4.jpg",
  // Accessoire
  "assets/images/acc.jpg", 
   "assets/images/jean5.jpg", "assets/images/jean4.jpg", "assets/images/jean6.jpg", "assets/images/tsh1.jpg", "assets/images/acc.jpg"

];

List<String> get productReviews => List.generate( ProductName.length, (i) => "${(i + 5) * 2} Reviews");
List<String> get productPromoPrice => List.generate(ProductName.length, (i) => "Tk ${500 + (i * 50)}");
List<String> get productNormalPrice => List.generate(ProductName.length, (i) => "Tk ${1200 + (i * 100)}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        toolbarHeight: 20,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    height: 60,
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    width: MediaQuery.of(context).size.width / 1.8,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search your product",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.search, size: 30),
                      ),
                    ),
                  ),
        
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Panier()));
                    },
                    child: CircleAvatar(
                      backgroundColor: greyColor,
                      radius: 30,
                      child: Center(
                        child: Icon(Icons.shopping_bag_outlined, size: 30),
                      ),
                    ),
                  ),

                   InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Account()));
                    },
                    child: CircleAvatar(
                      backgroundColor: greyColor,
                      radius: 30,
                      child: Center(
                        child: Icon(Icons.person, size: 30),
                      ),
                    ),
                  ),
                ],
              ),
        
              SizedBox(height: 15),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isMan = true;
                            isKids = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 30,
                          decoration: BoxDecoration(
                            color: isMan ? mainColor : Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: mainColor),
                          ),
                          child: Center(
                            child: TextComponent(
                              txt: "Man",
                              color: isMan ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
        
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isMan = false;
                            isKids = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 30,
                          decoration: BoxDecoration(
                            color: isKids ? mainColor : Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: mainColor),
                          ),
                          child: Center(
                            child: TextComponent(
                              txt: "Kids",
                              color: isKids ? Colors.white : Colors.black,
                              fw: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Filtre()));
                    },
                    child: Icon(Icons.menu, size: 30)),
                ],
              ),
        
              SizedBox(height: 15),
        
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: greyColor2,
        
                  image: DecorationImage(
                    image: AssetImage("assets/images/child.jpg"),
                  ),
                ),
              ),
        
              SizedBox(height: 15),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextComponent(
                    txt: "Categories",
                    fw: FontWeight.bold,
                    txtSize: 15,
                  ),
                  TextComponent(txt: "See All", color: mainColor, txtSize: 15),
                ],
              ),
        
              SizedBox(height: 15),
        
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
        
                child: Row(
                  children: [
                    CategorieBox("T-Shirt", 'assets/images/tsh1.jpg', context),
                    CategorieBox("Jeans", 'assets/images/jean.jpg', context),
                    CategorieBox("Shoes", 'assets/images/shoe.jpg', context),
                    CategorieBox("Watch", 'assets/images/wh1.jpg', context),
                    CategorieBox("Accesory", 'assets/images/acc.jpg', context),
                  ],
                ),
              ),
        
              SizedBox(height: 15),
        
              Row(
                children: [
                  TextComponent(txt: "All Product", fw: FontWeight.bold),
                ],
              ),
        
              SizedBox(height: 15),
        
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: List.generate(ProductName.length - 1, (index) {
                  return Container(
                    width: (MediaQuery.of(context).size.width / 2) - 20,
                    child: productBox(ProductName[index], productReviews[index], productPromoPrice[index], productNormalPrice[index], ProductImg[index], context,),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
