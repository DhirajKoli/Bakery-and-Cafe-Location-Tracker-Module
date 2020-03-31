import 'package:flutter/material.dart';
import 'homepage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cake Shops & Cafés',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 355, 355, 1),
      ),
      home: HomePage(),
    );
  }
}