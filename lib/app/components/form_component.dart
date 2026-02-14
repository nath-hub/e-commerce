import 'package:flutter/material.dart';

class FormComponent extends StatelessWidget { 

  TextInputType textInputType;
  bool hide; 
  TextEditingController? controll;
 
  FormComponent({
    this.hide = false,
    this.textInputType = TextInputType.emailAddress,
    this.controll
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controll,
      keyboardType: textInputType,
      obscureText: hide,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        suffixIcon: hide?Icon(Icons.remove_red_eye_rounded):null,
      ),
    );
  }
}
