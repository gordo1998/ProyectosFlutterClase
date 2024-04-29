import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:listviews/Model/Pais.dart';
import 'package:listviews/utils/ListaPaises.dart';
import 'package:listviews/Routes/routes.dart';
import 'package:listviews/Routes/app_routes.dart';

import 'dart:convert';
import 'dart:io';

import 'package:listviews/Model/listadoPaises.dart';
import 'package:listviews/Pages/PaisDescription.dart';

class PagePais extends StatefulWidget {
  const PagePais({super.key, required this.title});

  
  final String title;

  @override
  State<PagePais> createState() => _PagePais();
}

class _PagePais extends State<PagePais> {  
  

  Widget listadoPaises(BuildContext context) {    
    //readJson();
    ListaPaises.paises[0].bandera;
    return ListView.builder(
      itemCount: ListaPaises.paises.length,
      itemBuilder: (context, index){
        return CupertinoButton(
          onPressed: (){
            Navigator.pushNamed(context, Routes.pais, arguments: ListaPaises.paises[index]);
          },
          child: Card(
            child: ListTile(
              leading: Hero(
                tag: ListaPaises.paises[index].tag,
                child: Image.asset("${ListaPaises.paises[index].bandera}", height: 40, width: 60,)),
              title: Text("${ListaPaises.paises[index].nombre}"),
              subtitle: Text("${ListaPaises.paises[index].descripcionCorta}"),
            ),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: listadoPaises(context)
    );
  }
}
