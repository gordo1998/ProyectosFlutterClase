import 'package:flutter/material.dart';
import 'package:listviews/Model/Pais.dart';
import 'package:listviews/Pages/Login.dart';
import 'package:listviews/Pages/Menu.dart';
import 'package:listviews/Pages/PagePais.dart';
import 'package:listviews/Pages/PaisDescription.dart';
import 'package:listviews/Pages/Splash.dart';
import 'package:listviews/Routes/routes.dart';
import 'package:listviews/Pages/VistaProducts.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';

Map<String, Widget Function(BuildContext )> get appRoutes{
  return {
    Routes.splash: (context) => Splash(),
    Routes.login: (context) {
      final text = AppLocalizations.of(context)!;
      return Login(title: text.login);
    } ,
    Routes.menu: (context) {
      final text = AppLocalizations.of(context)!;
      return Menu(title: text.menu);
    },
    Routes.listaPaises: (context) {
      final text = AppLocalizations.of(context)!;
      return PagePais(title: text.paises);
    } ,
    Routes.pais: (context)  {
      final text = AppLocalizations.of(context)!;
      final pais = ModalRoute.of(context)!.settings.arguments as Pais;
      return PaisDescription(pais, title: text.pais);
    },
    Routes.productos: (context) {
      final text = AppLocalizations.of(context)!;
      return VistaProducts(title: text.productos);
    } ,
  };
}