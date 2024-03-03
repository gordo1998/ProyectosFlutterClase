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
        title: "Mi primera aplicación",
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 32, 238, 118)),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  var currentDos = WordPair.random();
  String tituloChange = "Mi primera aplicación";

  void getNext(){
    current = WordPair.random();
    currentDos = WordPair.random();
    notifyListeners();
  }

  void changeTitule(){
    tituloChange = "Título cambiado";
    notifyListeners();
  }

}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var appStateCurrent = appState.current;
    var appStateCurrentDos = appState.currentDos;

    return Scaffold(
      appBar: AppBar(
        title: Text(appState.tituloChange),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigCard(appStateCurrent: appStateCurrent),
            SizedBox(height: 40),//Esto era un Text. Con refactor y extract widget.
            ElevatedButton(
              onPressed: (){
                appState.getNext();
                appState.changeTitule();
              }, 
              child: Text("Cambiar título")
            ),
            Image.asset(
              'assets/leoncito.jpg'),
              

          ],
        ),
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.appStateCurrent,
  });

  final WordPair appStateCurrent;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);//
  //style es un TextStyle
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
      fontSize: 100.0,
    );
    return Card(//Esto era solo padding. con refactor wrap with widget. Es un widget de nivel superior de Padding 
      color: theme.colorScheme.primary,
      child: Padding(//Esto es un widget superior, ya que text() es hijo de padding
        padding: const EdgeInsets.all(20),
        child: Text(appStateCurrent.asUpperCase, style: style), 
      ),
    );
  }
}
