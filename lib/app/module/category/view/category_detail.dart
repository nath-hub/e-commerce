import 'package:alarme_me/app/components/text_component.dart';
import 'package:alarme_me/app/module/product/controller/controller.dart';
import 'package:flutter/material.dart';

bool isMan = false;
bool isKids = false;

class CategoryDetail extends StatefulWidget {
  String productName;

  CategoryDetail({required this.productName, super.key});

  @override
  State<CategoryDetail> createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: TextComponent(
          txt: widget.productName,
          txtSize: 19,
          fw: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                 Wrap(
                spacing: 8,
                runSpacing: 8,
                children: List.generate(6, (index) {
                  return Container(
                    width: (MediaQuery.of(context).size.width / 2) - 20,
                    child: productBox("Panjabi", "13 Reviews", "Tk 500","Tk 1900", "", context),
                  );
                }),
              ),
          ],
        ),
      ),
    );
  }
}
