import 'package:flutter/material.dart';

class ListCustom extends StatelessWidget {
  List<Map<String, String>> products = [
    {
      'name': 'Aspirina',
      'image': 'assets/images/aspirina.png',
      'subtitle': 'Alívio da dor'
    },
    {
      'name': 'Novalgina',
      'image': 'assets/images/novalgina.png',
      'subtitle': 'Alívio da dor'
    },
    {
      'name': 'Energil C',
      'image': 'assets/images/energilc.png',
      'subtitle': 'Vitamina C'
    },
    {
      'name': 'Dorflex',
      'image': 'assets/images/dorflex.png',
      'subtitle': 'Alívio da dor'
    },
    {
      'name': 'Ivermectina',
      'image': 'assets/images/ivermectina.png',
      'subtitle': 'Antiparasitário'
    },
  ];

  ListCustom({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
        leading: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(shape: BoxShape.circle),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(products[index]['image']!, height: 100, width: 100, fit: BoxFit.fill,),
          ) ,
          title: Text(products[index]['name']!, style: TextStyle(fontSize: 16, fontStyle: FontStyle.normal, color: Colors.black),),
          subtitle: Text(products[index]['subtitle']!, style: TextStyle(fontSize: 12, color: const Color.fromARGB(255, 80, 80, 80)),),
          trailing: Icon(Icons.add),
          contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
        );
      },
      separatorBuilder: (context, index) {//<-- SEE HERE
        return Divider(
          thickness: 1,
        );
      },
    );
  }
}
