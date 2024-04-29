import 'package:intl/intl.dart';
import 'package:listviews/Model/Fruta.dart';

class ListaFrutas {
  static List<Fruta> frutas = [new Fruta("Aguacates", "Precios: ${NumberFormat.currency().format(29.99)}","assets/aguacates.jpg"), 
                               new Fruta("Kiwis", "Precios: ", "assets/kiwis.jpg"),
                               new Fruta("Manzanas", "Precios: ", "assets/manzanas.jpg"), 
                               new Fruta("Naranjas", "Precios: ", "assets/naranjas.jpg"),
                               new Fruta("Peras", "Precios: ", "assets/peras.jpg"), 
                               new Fruta("Piñas", "Precios: ", "assets/piñas.jpg")
                              ];
}