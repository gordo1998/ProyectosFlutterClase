import 'package:flutter/material.dart';
import 'package:listviews/Model/Pais.dart';
import 'package:listviews/Model/listadoPaises.dart';
import 'package:listviews/utils/ListaPaises.dart';
import 'package:listviews/Routes/routes.dart';
import 'package:listviews/Routes/app_routes.dart';


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
                SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text("Eliminar Pais"),
                      content: Text("Estás seguro de eliminiar este país?"),
                      actions: <Widget> [
                        TextButton(
                          onPressed: (){
                            ListaPaises.paises.remove(widget.pais);
                            Navigator.pushNamed(context, Routes.listaPaises);
                          }, 
                          child: Text("Eliminar")
                        ),
                        TextButton(onPressed: () => Navigator.pop(context), 
                        child: Text("Cancelar"),
                        ),
                      ],
                    )
                  ), 
                  child: Text("Eliminar Pais")),
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