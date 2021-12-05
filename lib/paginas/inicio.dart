

import 'package:clon_netflix/componenetes/cartel_principal.dart';
import 'package:clon_netflix/componenetes/item_imagen.dart';
import 'package:clon_netflix/componenetes/item_redondeado.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            CartesPrincipal(), 
          this.listaHorizontal('Avances',ItemRedondeado(),9),
          SizedBox(height: 10.0,),
          this.listaHorizontal('Tendencias',ItemImagen(),5),
          SizedBox(height: 10.0,),
          this.listaHorizontal('Viajes en el Tiempo',ItemImagen(),5),
          SizedBox(height: 10.0,),
          this.listaHorizontal('Adolecentes',ItemImagen(),5),
          SizedBox(height: 20.0,),
           ],
        ),
        bottomNavigationBar: this.navInferior(),
        );
  }

BottomNavigationBar navInferior(){
  return BottomNavigationBar(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white54,
    type: BottomNavigationBarType.fixed,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Inicio',style: TextStyle(fontSize: 12),)),
      BottomNavigationBarItem(icon: Icon(Icons.search),title: Text('Buscar',style: TextStyle(fontSize: 12),)),
      BottomNavigationBarItem(icon: Icon(Icons.library_music),title: Text('Proximamente',style: TextStyle(fontSize: 12),)),
      BottomNavigationBarItem(icon: Icon(Icons.arrow_downward),title: Text('Descargas',style: TextStyle(fontSize: 12),)),
      BottomNavigationBarItem(icon: Icon(Icons.more_horiz),title: Text('Mas..',style: TextStyle(fontSize: 12),))           

    ],
  );
}
  Widget listaHorizontal(String titulo,Widget item,int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        Container(
            height: 110.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cantidad,
              itemBuilder: (context, index) {
                return item;
              },
            ))
      ],
    );
  }
}
