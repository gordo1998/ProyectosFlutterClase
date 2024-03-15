import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:listviews/Model/Pais.dart';
import 'dart:convert';
import 'dart:io';

import 'package:listviews/Model/listadoPaises.dart';
import 'package:listviews/Pages/PaisDescription.dart';

class PagePais extends StatefulWidget {
  const PagePais({super.key, required this.title});

  
  final String title;

  @override
  State<PagePais> createState() => _PagePais();
}

class _PagePais extends State<PagePais> {
  List<Pais> listaPaises = [];
  ListadoPaises paises = new ListadoPaises();

  void crearLista(){
    listaPaises.add(new Pais("Estado Unidos", "assets/estadosUnidos.png", "País ubicado en América del Norte, conocido por su diversidad cultural y su influencia política y económica a nivel mundial.", "Estados Unidos es una nación diversa y dinámica ubicada en América del Norte. Con una población de más de 300 millones de habitantes, es conocida por su vasta extensión geográfica, su diversidad cultural y su papel dominante en la economía global. La historia del país está marcada por una serie de eventos significativos, incluida su independencia de Gran Bretaña en el siglo XVIII y su papel clave en la Segunda Guerra Mundial y la Guerra Fría. Estados Unidos es también conocido por su sistema político democrático y su capital, Washington D.C., es el centro de su gobierno federal. Además, el país es hogar de numerosas ciudades importantes, como Nueva York, Los Ángeles y Chicago, que contribuyen a su rica vida cultural y económica.", "1"));
    listaPaises.add(new Pais("Brasil", "assets/brasil.jpg", "País sudamericano conocido por su diversidad natural, su cultura vibrante y su pasión por el fútbol.", "Brasil, el país más grande de América del Sur, es conocido por su exuberante diversidad natural, desde la selva amazónica hasta las playas de arena blanca. Además de su impresionante paisaje, Brasil es famoso por su cultura vibrante y su rica historia, influenciada por una mezcla única de culturas indígenas, africanas y europeas. La música y la danza son parte integral de la vida brasileña, con géneros como la samba y la bossa nova que han ganado fama internacional. Además, el fútbol es una pasión nacional, con Brasil siendo uno de los países más exitosos en la historia de este deporte. La diversidad étnica, la cocina deliciosa y la hospitalidad brasileña hacen de este país un destino fascinante para visitantes de todo el mundo.", "2"));
    listaPaises.add(new Pais("Japón", "assets/japon.jpg", "País insular en Asia oriental conocido por su rica cultura, su tecnología avanzada y su gastronomía única.", "Japón es un país insular en Asia oriental que combina una rica historia y tradición con una tecnología avanzada y una cultura contemporánea vibrante. Conocido por su mezcla única de lo antiguo y lo moderno, Japón es el hogar de ciudades ultramodernas como Tokio y Kioto, así como de antiguos templos, santuarios y jardines zen. La cultura japonesa valora la cortesía, la modestia y el respeto por la naturaleza y la comunidad. Además, Japón es líder mundial en tecnología y desarrollo, siendo pionero en áreas como la electrónica, la robótica y la ingeniería automotriz. La gastronomía japonesa, que incluye sushi, ramen y tempura, es apreciada en todo el mundo por su frescura, sabor y presentación meticulosa.", "3"));
    listaPaises.add(new Pais("Francia", "assets/francia.jpg", "País europeo conocido por su historia rica, su arte excepcional y su gastronomía sofisticada.", "Francia, situada en Europa occidental, es conocida por ser un destino turístico de primer orden, gracias a su rica historia, su arte excepcional y su gastronomía sofisticada. El país alberga una gran cantidad de monumentos históricos, desde la Torre Eiffel hasta el Palacio de Versalles, así como una impresionante colección de museos que albergan obras de arte de fama mundial, como el Louvre en París. La cultura francesa valora la elegancia, el estilo y el placer, y es conocida por sus contribuciones a la moda, la cocina y la literatura. La cocina francesa, con sus vinos finos, quesos exquisitos y platos elaborados, es considerada una de las mejores del mundo. Además, Francia es un importante centro de diplomacia y política internacional, siendo miembro permanente del Consejo de Seguridad de las Naciones Unidas.", "4"));
    listaPaises.add(new Pais("China", "assets/china.jpg", "País en Asia oriental conocido por su antigua civilización, su gran muralla y su rápida modernización.", "China es una antigua civilización en Asia oriental que ha experimentado una rápida modernización en las últimas décadas, convirtiéndose en una potencia económica y política mundial. Con una historia que se remonta a miles de años, China ha sido el hogar de grandes inventos y descubrimientos, desde la brújula hasta la pólvora. La Gran Muralla China, una maravilla arquitectónica que se extiende a lo largo de miles de kilómetros, es uno de los símbolos más reconocidos del país. China es conocida por su vasta población, su rica cultura y sus tradiciones arraigadas, incluida la celebración del Año Nuevo Lunar y la práctica del tai chi. Además, el país ha experimentado un rápido crecimiento económico en las últimas décadas, convirtiéndose en una fuerza líder en la fabricación, la tecnología y el comercio global.", "5"));
  }
  
  

  Widget listadoPaises(BuildContext context) {    
    //readJson();
    crearLista();
    return ListView.builder(
      itemCount: listaPaises.length,
      itemBuilder: (context, index){
        return CupertinoButton(
          onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => PaisDescription(listaPaises[index], title: "pais"))
            );
          },
          child: Card(
            child: ListTile(
              leading: Hero(
                tag: listaPaises[index].tag,
                child: Image.asset("${listaPaises[index].bandera}", height: 40, width: 60,)),
              title: Text("${listaPaises[index].nombre}"),
              subtitle: Text("${listaPaises[index].descripcionCorta}"),
            ),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: listadoPaises(context)
    );
  }
}
