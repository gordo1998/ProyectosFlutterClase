
import 'package:actividad_vistas_dinamicas/pages/perfilcuenta.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  final myControllerUno = TextEditingController();
  final myControllerDos = TextEditingController();
 

  final email = "jordibarreda98@gmail.com";
  final password = "J.barreda98";
  final user = "Jordi";
  Color coloresPassword = Colors.blue;
  Color colorPasswordRong = Colors.grey;
  String valHintPasswd = "Password";
  Color colorhint = Color.fromARGB(255, 110, 110, 110);
   

  @override
  void dispose(){
    myControllerUno.dispose();
    myControllerDos.dispose();
    super.dispose();
  }

  Widget textFieldEmail(){
    return TextField(
      controller: myControllerUno,
      obscureText: false,  
      textAlign: TextAlign.left,
      autofocus: false,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Colors.grey,
            
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Colors.blue,
          )
        ),
        hintText: "Email"
    
      )
    
    );
  }

  Widget textFieldPass(){
    return  TextField(
      controller: myControllerDos,
      obscureText: true,  
      textAlign: TextAlign.left,
      autofocus: false,
      decoration:  InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: colorPasswordRong,
            
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: coloresPassword,
          )
        ),
        border: UnderlineInputBorder(),
        hintText: valHintPasswd,
        hintStyle: TextStyle(
          color: colorhint,
        )
    
      )
    
    );
  }

  Widget elevatedButtonLogin(){
    return ElevatedButton(
      onPressed: (){
        
        if(myControllerUno.text == email){
          if(myControllerDos.text == password){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PerfilCuenta(user))
            );
          }
          else{
            setState(() {
              coloresPassword = Colors.red;
              colorPasswordRong = Colors.red;
              valHintPasswd = "!Contrasenya incorrecta!";
              colorhint = Colors.red;
              myControllerDos.text = "";
              
            });
          }
        }
        
      }, 
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor:  Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 60)
      ),
      child: Text("Login")
    );
  }

  Widget forgotPassword(){
    return GestureDetector(
      onTap: () {
        //Aqui va la acción
      },
      child: Text("Forgot password",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 13,
          fontWeight: FontWeight.bold
        )),
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
        child: ListView(
          scrollDirection: Axis.horizontal,
          children:<Widget>[
            Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 70),
                    Image.asset("assets/LOGOFLUTTERdef.jpg", scale: 5.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: textFieldEmail(),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: textFieldPass(),
                    ),
                    SizedBox(height: 20),
                    forgotPassword(),
                    SizedBox(height: 20),
                    elevatedButtonLogin(),
                ],
              ),
            ),
            Column(
              children: [
                Text("New User? Create Account"),
                SizedBox(height: 10)
              ],
            ),
            Column(
              children: [
                Text("hola"),
                Text("adios"),

              ],
            ),
            SizedBox(height: 100),
            Column(
              children: [
                Text("aduiosd"),
                Text("ksn"),
              ],
            )
          ],
        ),
      )
    );
             
              
              
     
      
  }
}


