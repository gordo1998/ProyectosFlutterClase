import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:listviews/Model/Pais.dart';
import 'dart:convert';
import 'dart:io';

import 'package:listviews/Model/listadoPaises.dart';
import 'package:listviews/Pages/PaisDescription.dart';
import 'package:listviews/Routes/routes.dart';

class Splash extends StatefulWidget {
  Splash({super.key});


  @override
  State<Splash> createState() => _Splash();
}

class _Splash extends State<Splash> {
  
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 10),).then((value) => {
      Navigator.pushReplacementNamed(context, Routes.login)
    });
  }


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Container(
        color: Colors.amber[400],
        child: Column(
          children: <Widget> [
            const SizedBox(height: 50,),
            SizedBox(
              height: 200,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Center(
                    child: SizedBox(
                      width: 600,
                      height: 600,
                      child: Image.asset("assets/cat-loading (2).gif"),
                    ),
                  ), 
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
