import 'package:flutter/material.dart';

class ListadoPaises extends StatefulWidget {
  const ListadoPaises({super.key, required this.title});

  
  final String title;

  @override
  State<ListadoPaises> createState() => _ListadoPaises();
}

class _ListadoPaises extends State<ListadoPaises> {

 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
        
          
          children: [
           
          ],
        ),
      ),
    );
  }
}
