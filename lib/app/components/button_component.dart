import 'package:alarme_me/utils/colors.dart';
import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget{

String txtButton;
Color button_color;

ButtonComponent({
  required this.txtButton, this.button_color = Colors.black,
});



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: button_color,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Center(
        child: Text(txtButton, style: TextStyle(
          color: Colors.white,
          fontSize: 17,

        ),),
      ),
    );
  }
  
}