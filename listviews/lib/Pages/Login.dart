// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:listviews/Pages/PagePais.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  
  final String title;

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {

  final _finalFormKey = GlobalKey<FormState>();
  String? hellow;
  String? bye;
  final controlerUser = TextEditingController();
  final controlerPassword = TextEditingController();

  String recibirPassword(){
    
    return "J.barreda98";
  }

  bool comprobarPassword(password){
    final bool emailValid = RegExp(r"^(?=.*[A-Z])(?=.*\d)(?=.*[a-zA-Z])(?=.*[^a-zA-Z\d]).{7,}$")
    .hasMatch(password);
    return emailValid;
  }
  

  Widget imagenFlutter(){
    return Image.asset(
      "assets/LOGOFLUTTERdef.jpg",
      scale: 5,
    );
  }

  Widget formulario(){

    return Form(
      key: _finalFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            TextFormField(
              controller: controlerUser,
              validator: (value){
                if(value!.isEmpty){
                  return "Please enter a text!";
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ), 
            SizedBox(height: 20),         
            TextFormField(//CONTRASEÑA
              controller: controlerPassword,
              autofocus: false,
              obscureText: true,
              
              validator: (value){
                if(value!.isEmpty){
                  return "Please enter a text!";
                }else if(!value.contains(recibirPassword())){
                  return "Contraseña incorrecta!";
                }else if(value.contains(recibirPassword())){
                  if (!comprobarPassword(value)){
                    return "Contraseña poco segura";
                  }
                }

                
                
              },
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  if(_finalFormKey.currentState!.validate()){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PagePais(title: "hola")));
                    print("hila");
                    print("${controlerUser.text} ${controlerPassword.text}");
                  }
                }, 
                child: Text("Hola"),
              ),
            ),
        
            
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children:[
            SizedBox(height: 20),
            imagenFlutter(),
            formulario(),                        
          ],
        ),
      ),
    );
  }
}
