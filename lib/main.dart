import 'package:application2/curouselslider.dart';
import 'package:application2/grid%20view/gridview.dart';
import 'package:application2/home.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:ThemeData(
      primarySwatch: Colors.blue,
    ),
    home:GridViewTest()
  )
  );
}