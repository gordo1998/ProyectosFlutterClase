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
        title: "Actividad 2",
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
 
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var appState = context.watch<MyAppState>();


    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Vista 1")),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2.0
                )
              ),
              child: Row(
                children:[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                 border: Border.all(
                                  color: Colors.black,
                                  width: 2.0
                                )
                              ),
                              child: Text("Probando el texto puesto")
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0
                                )
                              ),
                              child: Text("Probando el texto puesto")
                            ),
                          ]
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 2.0
                      )
                    ),
                    child: Icon(
                      Icons.star,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.red,
                          width: 2.0
                        )
                      ),
                      child: Text("41")
                    ),
                  ),
                ]
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageSecond()),
                    );
                  },
                  child: Text("Siguiente página")
                )
              ],
            )
          ],
        )
        
      ),
    );
  }
}

class PageSecond extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Vista 2")),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.network("http://2.bp.blogspot.com/-sm0o6dv4nmQ/TlPxt_mZq6I/AAAAAAAAkYY/SxGWzGCNygA/s1600/superb-nature-corner-1920x1200.jpg"),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Probando el texto puesto"),
                          Text("Probando el texto puesto"),
                        ]
                      ),
                    ),
                  ),
                  Icon(
                    Icons.star,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text("41"),
                  ),
                ],
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/telefono.png"),
                  Image.asset("assets/cursor.png"),
                  Image.asset("assets/compartir.png")
        
        
              ],),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("En el vasto y misterioso cosmos que se extiende más allá de nuestra atmósfera, la humanidad ha encontrado tanto un desafío como una fascinación inagotables. Desde los albores de la civilización, hemos levantado la mirada hacia el cielo nocturno, maravillados por las estrellas que parpadean en la oscuridad y los planetas que vagan por el éter. Sin embargo, fue solo en el siglo XX cuando la tecnología y la ambición humana se unieron para llevar a cabo una hazaña que antes solo se consideraba un sueño: la exploración espacial.",
                textAlign: TextAlign.justify,),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                }, 
                child: Text("Página inicial")
              ),
              SizedBox(height: 20),
            ],
          )
        ),
      ),
    );
  }
}

/*

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
*/