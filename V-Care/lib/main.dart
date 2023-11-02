import 'package:flutter/material.dart';
import 'package:getstart/pages/sparepartsshop.dart';

import 'pages/getstart.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Onbording(),
      
      
    );
  }
  
}