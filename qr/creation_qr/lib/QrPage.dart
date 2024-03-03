import 'package:flutter/material.dart';

class QrPage extends StatefulWidget {
  const QrPage({super.key, required this.title});

  final String title;

  @override
  State<QrPage> createState() => _QrPage();
}

class _QrPage extends State<QrPage> {
  int _counter = 0;

  Widget botonGoole(){
    return ElevatedButton(
      onPressed: () {

      }, 
      child: Image.asset("assets/google32.png")
    );
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Crea tu qr con un solo click"),
            Text("Para crear tu qr has de identificarte con tu correo para que se te genere una clave privada que generará el qr"),
            botonGoole(),
          ],  
        ),
      )
    );
  }
}