import 'package:flutter/material.dart';
import 'package:pharmacy/screens/share/custom_appbar.dart';
import 'package:pharmacy/model/list_custom.dart';


class Home extends StatelessWidget {
  const Home({super.key});
  @override
    Widget build(BuildContext context) {

    var Dorflex = ListCustom();
    
    return Scaffold(
      appBar: customAppBar('menu principal'),
      backgroundColor: Color.fromARGB(255, 3, 44, 78),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'list_custom');
        },
        child: const Icon(Icons.edit),
      ),
      body: Dorflex,
    );
  }
}