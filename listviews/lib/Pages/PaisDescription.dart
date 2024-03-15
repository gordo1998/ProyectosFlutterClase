import 'package:flutter/material.dart';
import 'package:listviews/Model/Pais.dart';
import 'package:listviews/Model/listadoPaises.dart';


class PaisDescription extends StatefulWidget {
  final String title;
  Pais pais;
  
  PaisDescription(this.pais, {super.key, required this.title});
  
  
  

  @override
  State<PaisDescription> createState() => _PaisDescription();
}

class _PaisDescription extends State<PaisDescription> {
 
  Widget descripcionPais(){
    return Center(
      child: ListView(
        children: [
          Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  }, 
                  child:  Hero(
                    tag: widget.pais.tag,
                    child: Image.asset("${widget.pais.bandera}")
                  )
                ),
                //Image.asset("${widget.pais.bandera}"),
                SizedBox(height: 20),
                Text("Descripción:"),
                Text("${widget.pais.descripcionLarga}"),
                
              ],
            ),
            
          ),
        ),
        ] 
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
      body: descripcionPais()
    );
  }
}