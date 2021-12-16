import 'package:cars_market/pages/home_page.dart';
import 'package:flutter/material.dart';

 void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home_page(),
    routes: {
      Home_page.id:(context)=>Home_page(),
    },
  ));
}