import 'package:clon_netflix/componenetes/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class CartesPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [this.cabecera(), this.infoserie(),this.botonera()],
    );
  }

  //Esto es una funcion
  Widget cabecera() {
    return Stack(
      children: [
        Image.asset('assets/img/portada_dark.jpg',
          height: 350.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black38, Colors.black])),
        ),
        SafeArea(child: NavBarSuperior()),
      ],
    );
  }

  Widget infoserie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Telenovelesco',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0), //Genera un espacio entre los elementos
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'Suspenso insostenible',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'De suspenso',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'Adolecentes',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
    padding: EdgeInsets.symmetric(vertical: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      Column(children: [
        Icon(Icons.check,color: Colors.white,),
        Text('Mi Lista',style: TextStyle(color: Colors.white,fontSize: 10.0),)
        ],),
      FlatButton.icon(onPressed: (){},color: Colors.white, icon: Icon(Icons.play_arrow), label: Text('Reproducir'),),
      Column(children: [
        Icon(Icons.info_outline ,color: Colors.white,),
        Text('Info',style: TextStyle(color: Colors.white,fontSize: 10.0),)
      ],)
    ],),
    ) ;
  }
}
