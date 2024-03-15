import 'package:listviews/Model/Pais.dart';

class ListadoPaises{
  List<Pais> paises = []; 

  ListadoPaises();

  List<Pais> getPaises(){
    return paises;
  }

  setPaises(List<Pais> listapaises){
    paises = listapaises;
  }
}