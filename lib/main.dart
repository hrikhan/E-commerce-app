import 'package:flutter/material.dart';
import 'package:yoori/homepage.dart';

void main() {
  runApp(myapp());

}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage() ,
    );
  }
}
