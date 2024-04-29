import 'package:flutter/material.dart';
import 'package:listviews/Model/Fruta.dart';
import 'package:listviews/Pages/Login.dart';
import 'package:listviews/Pages/Splash.dart';
import 'package:listviews/Pages/VistaProducts.dart';
import 'package:listviews/Routes/app_routes.dart';
import 'package:listviews/Routes/routes.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:listviews/utils/app_settings.dart';
import 'package:intl/number_symbols_data.dart';



//import 'package:listviews/Pages/listadoPaises.dart';

void main() {
  //numberFormatSymbols;
  //Aqui devuelve un map con el locale y el currency symbol
  Intl.defaultLocale = defaultDeviceLanguage;//Aqui le indicamos la internacionalizacion por defecto del dispositivo
  runApp(const ProjectFlutterDam());
}

class ProjectFlutterDam extends StatefulWidget{
  const ProjectFlutterDam({super.key});
  
  @override
  State<StatefulWidget> createState() => MyApp();
}

class MyApp extends State {    

  late Locale mylocale;

  Locale get locale => mylocale;

  @override
  void initState() {
    super.initState();

    mylocale = Locale(defaultLocale, defaultLanguage);
  }

  void changeLanguage(Locale localee) {
    setState(() {
      print(localee.toString());
      mylocale = localee;
      defaultLocale = localee.toString();
    });
  }

  

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const[
        Locale("es"),
        Locale("en"),
        Locale("es_ES"),
        Locale("en_US"),
        Locale("ar"),
        Locale("ar_ZA"),
        Locale("fr"),
        Locale("fr_FR"),

      ],
      locale: mylocale,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: appRoutes,
      initialRoute: Routes.splash,
    );
  }
}

