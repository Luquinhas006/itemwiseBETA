import 'package:flutter/material.dart';
import 'package:pharmacy/model/list_custom.dart';
import 'package:pharmacy/screens/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (context) => Home(),
        'list_custom': (context) => ListCustom(),
      },
      debugShowCheckedModeBanner: false,
    )
  );
}
