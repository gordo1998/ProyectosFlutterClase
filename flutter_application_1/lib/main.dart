import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Nose nada',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext(){
    current = WordPair.random();
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Text("Buenos días"),
              Text("Buenas tardes")
            ],
          ),
          Column(
            children: [
              Text("Jueputa"),
              Text("La narrativa")
            ],
          ),
          Column(
            children: [
              Text("Muchos besos a tods")
            ],
          ),
          Column(
            children: [
              Text("No"),
              Text("Si"),
              Text("Puede ser"),
              Text("Nunca se sabe"),
              Text("Quizás"),
              Row(
                children: [
                  Column(
                    children: [
                      Text("Esto es una parte"),
                      Text("Esto es otra parte"),
                      Text("Esto es la ultima parte")
                    ],
                  ),
                  Column(
                    children: [
                      Text("Nose guradan las cosas"),
                      Text("Me tiro un pedo"),
                      Text("Boloñesa con lasagnha")
                    ],
                  ),
                  Column(
                    children: [
                      Text("Mucha suerte"),
                      Text("pan con tomate bro"),
                      Text("mentiras a mediass")
                    ],
                  ),
              
                ],
              )
            ],
          ),
          Column(
            children: [
              Text("hola"),
              ElevatedButton(
                onPressed: (){
                  appState.getNext();
                },
                child: Text("Siguiente"),
              ),
            ],
          )
        ],
      )
    );
/*
    return Scaffold(
      body: Column(
        children: [
          Text('Que pasaaaaaSSSS:'),
          Text(appState.current.asLowerCase),
          Text("Holiiira"),
          Text("Pero qué pedo?"),
          Text("No")
        ],
      ),
    );
*/
  }
}
