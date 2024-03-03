import 'package:flutter/material.dart';

class PerfilCuenta extends StatefulWidget {
  String user;
  PerfilCuenta(this.user, {super.key});

  @override
  State<PerfilCuenta> createState() => _PerfilCuentaState();
}

class _PerfilCuentaState extends State<PerfilCuenta>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
 int numIncrement = 0;





  void incrementar(){
    setState(() {
      numIncrement++;
    });
  }

  void decrementar(){
    setState((){
      numIncrement--;
    });
  }
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget bienvenida(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(255, 53, 161, 250),
          width: 2.0,
          
        ),
        color: const Color.fromARGB(255, 53, 161, 250),
        boxShadow: [
          new BoxShadow(
            color: Colors.black,
            offset: new Offset(0.0, 0.0),
            blurRadius: 20.0,
            spreadRadius: 5.0,
            
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Text("Bienvenid@ ${widget.user}", 
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                )),
          ],
        ),
      ),
    );
  }

  Widget imagenUsuario(){
    return Image.asset("assets/usuario.png",
            scale: 0.7);
  }

  Widget numeroIncrement(){
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 214, 234, 250),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color:  const Color.fromARGB(255, 214, 234, 250),
          width: 2.0
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 2,
            blurRadius: 20,
            offset: Offset(0, 3)
          )
        ]
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Text("$numIncrement",
              style: TextStyle(
                fontSize: 30.0,
              )),
          ),
        ],
      ),
    );
  }

  Widget botones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: (){
            decrementar();
          },
          child: Text("-"),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20)
          ),
        ),
        ElevatedButton(
          onPressed: (){ 
            incrementar();
          }, 
          child: Text("+"),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20)
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Column(
        children: [          
          Container(
            color: Colors.blue,
            width: 600,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bienvenida(),
              ],
            ),
          ),
        
          Container(
            height: 541,
            color: Color.fromARGB(255, 110, 186, 248),
            child: Column(
              children: [
                SizedBox(height: 100),
                imagenUsuario(),
                SizedBox(height: 30),
                numeroIncrement(),
                botones(),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}