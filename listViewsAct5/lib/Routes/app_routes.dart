import 'dart:js';

import 'package:flutter/material.dart';
import 'package:listviews/Pages/Login.dart';
import 'package:listviews/Pages/PagePais.dart';
import 'package:listviews/Pages/Splash.dart';
import 'package:listviews/Routes/routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes{
  return {
    Routes.splash: (context) => Splash(),
    Routes.login: (context) => Login(title: "Login"),
    Routes.listaPaises: (context) => PagePais(title: "Paises"),
  };
}