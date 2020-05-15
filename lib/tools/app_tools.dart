import 'package:flutter/material.dart';

Widget appTextField({
  Icon textIcon,
  String textHint,
  bool isPassword,
  double sidePadding,
  TextEditingController controller}){
  
  sidePadding == null ? sidePadding == 0.0 : sidePadding;
  textHint == null ? "": textHint;
  return Padding( 
    padding: new EdgeInsets.only(left: sidePadding,right: sidePadding),
  child : Container(
    decoration: new BoxDecoration(
      color: Colors.white,
      borderRadius: new BorderRadius.all(new Radius.circular(25.0)),
    ),
   child: new TextField(
     controller: controller,
     obscureText: isPassword==null? false:isPassword,
     decoration: new InputDecoration(
       hintText: textHint,
       prefixIcon:
       textIcon==null?new Container() : new Icon(Icons.person),
     ),
   ),
  
  
  ));
}