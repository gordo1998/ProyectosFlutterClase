import 'package:flutter/material.dart';

class PagePais extends StatefulWidget {
  const PagePais({super.key, required this.title});

  
  final String title;

  @override
  State<PagePais> createState() => _PagePais();
}

class _PagePais extends State<PagePais> {



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
          ],
        ),
      ),
    );
  }
}
