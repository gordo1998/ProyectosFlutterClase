import 'package:flutter/material.dart';
import 'package:listviews/Pages/Login.dart';
import 'package:listviews/Pages/Splash.dart';
import 'package:listviews/Routes/app_routes.dart';
import 'package:listviews/Routes/routes.dart';
//import 'package:listviews/Pages/listadoPaises.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: appRoutes,
      initialRoute: Routes.splash,
    );
  }
}

