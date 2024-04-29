import 'package:flutter/material.dart';
import 'package:listviews/Routes/routes.dart';

class Menu extends StatefulWidget {
  const Menu({super.key, required this.title});

  

  final String title;

  @override
  State<Menu> createState() => _Menu();
}

class _Menu extends State<Menu> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Column(
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, Routes.listaPaises);
                    }, 
                      child: Text("Paises")
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, Routes.productos);
                      }, 
                      child: Text("Frutas")),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      
    );
  }
}