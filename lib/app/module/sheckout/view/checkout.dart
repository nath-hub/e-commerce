import 'package:alarme_me/app/components/button_component.dart';
import 'package:alarme_me/app/components/form_component.dart';
import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/sheckout/controller/controller.dart';
import 'package:alarme_me/app/module/sheckout/view/checkout2.dart';
import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  List<String> cities = ["Camer", "Senegal", "Tchad", "Mali", "France"];
  List<String> districts = [
    "districts 1",
    "districts 2",
    "districts 3",
    "districts 4",
    "districts 5",
  ];

  String? SelectCity = "Camer";
  String? selectDistricts = "districts 1";

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
            PregressBar(stepActuel: 1),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextComponent(
                  txt: "Shopping Address",
                  fw: FontWeight.bold,
                  txtSize: 17,
                ),
              ],
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextComponent(txt: "Name", fw: FontWeight.bold),
                SizedBox(height: 5),
                FormComponent(),
                SizedBox(height: 20),
                TextComponent(txt: "Town/city", fw: FontWeight.bold),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DropdownButton(
                    isExpanded: true,
                    value: SelectCity,
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextComponent(
                        txt: "Cliquer ici pour selectionner",
                        color: Colors.grey,
                        fw: FontWeight.bold,
                      ),
                    ),
                    items: cities.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: TextComponent(txt: value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        SelectCity = value!;
                      });
                    },
                  ),
                ),
                SizedBox(height: 20),
                TextComponent(txt: "Code potal", fw: FontWeight.bold),
                SizedBox(height: 5),
                FormComponent(),

                SizedBox(height: 20),

                TextComponent(txt: "District", fw: FontWeight.bold),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DropdownButton(
                    isExpanded: true,
                    value: selectDistricts,
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextComponent(
                        txt: "Cliquer ici pour selectionner",
                        color: Colors.grey,
                        fw: FontWeight.bold,
                      ),
                    ),
                    items: districts.map<DropdownMenuItem<String>>((
                      String value,
                    ) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: TextComponent(txt: value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectDistricts = value!;
                      });
                    },
                  ),
                ),

                SizedBox(height: 20),
                TextComponent(txt: "Phone", fw: FontWeight.bold),
                SizedBox(height: 5),
                FormComponent(),

                SizedBox(height: 20),

               

                Container(
                  // height: 35,
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: InkWell(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Checkout2()));
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
          ],
        ),
      ),
    );
  }
}
