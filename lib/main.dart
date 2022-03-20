import 'package:flutter/material.dart';
 import 'package:flutter/material.dart';
import 'package:paricial2/pages/home_page.dart';

 
 void main() => runApp(parcial2());
 
 class parcial2 extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: "PARCIAL 2",
       initialRoute:HomePage.routeName ,
       routes: {
         HomePage.routeName: (context) => HomePage()
         
       }
       
     );
   }
 }