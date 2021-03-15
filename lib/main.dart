import 'package:flutter/material.dart';
import 'Pages/List/list.dart';
import 'Pages/start/home.dart';

void main() {
  runApp(MaterialApp(
    home: Start(),
    debugShowCheckedModeBanner: false,
  ));
}

//API
//https://desafio-flutter.herokuapp.com/v1/graphql

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste',
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      home: Home(),
    );
  }
}
