import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:listviews/Model/Fruta.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';
import 'package:listviews/utils/personal_widgets.dart';
import 'package:listviews/utils/app_settings.dart';

class VistaProducts extends StatefulWidget {
  const VistaProducts({super.key, required this.title});

  

  final String title;

  @override
  State<VistaProducts> createState() => _VistaProducts();
}

class _VistaProducts extends State<VistaProducts> {
   

  late NumberFormat localCurrency;
  

  Widget listadoFrutas(BuildContext context){

     
    
    final text = AppLocalizations.of(context)!;
    List<Fruta> frutas = [Fruta("${text!.aguacate}", "${text!.precios}: ${localCurrency.format(1.99)}","assets/aguacates.jpg"), 
                               Fruta("${text!.kiwis}", "${text!.precios}: ${localCurrency.format(3)}", "assets/kiwis.jpg"),
                               Fruta("${text!.manzanas}", "${text!.precios}: ${localCurrency.format(3)}", "assets/manzanas.jpg"), 
                               Fruta("${text!.naranjas}", "${text!.precios}: ${localCurrency.format(2.33)}", "assets/naranjas.jpg"),
                               Fruta("${text!.peras}", "${text!.precios}: ${localCurrency.format(2)}", "assets/peras.jpg"), 
                               Fruta("${text!.pinyas}", "${text!.precios}: ${localCurrency.format(6.99)}", "assets/piñas.jpg")
                              ];
    return ListView.builder(
      itemCount: frutas.length,
      itemBuilder: (context, index){
        return CupertinoButton(
          onPressed: (){
            
          },
          child: Card(
            child: ListTile(
              leading: Image.asset("${frutas[index].image}", height: 40, width: 60,),
              title: Text("${frutas[index].name}"),
              subtitle: Text("${frutas[index].descripcion}"),
            ),
          ),
        );
      }
    );
  }

@override
  void initState() {
    super.initState();
    print("initState:" + defaultLocale.toString());
    if(defaultLocale == "en"){
      defaultLocale += "_US";
    }else if(defaultLocale == "es"){
      defaultLocale += "_ES";
    }else if(defaultLocale == "ar"){
      defaultLocale += "ar_DZ";
    }else if(defaultLocale == "fr"){
      defaultLocale += "_FR";
    }
    print("initStateConvert: " + defaultLocale);
    internationalizationSettings(defaultLocale.toString());
    localCurrency = NumberFormat.currency(locale: defaultLocale.toString());
  }

  @override
  Widget build(BuildContext context) {


    setState(() {
      print("setState:" + defaultLocale.toString());
      internationalizationSettings(defaultLocale.toString());
      localCurrency = NumberFormat.currency(locale: defaultLocale.toString());
    });
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: languageSelector(context),
      ),
      body: 
            listadoFrutas(context),
          
      
      
    );
  }
}