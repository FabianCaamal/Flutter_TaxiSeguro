import 'package:flutter/material.dart';

AppBar appBarPrincipal(){
  return AppBar(
    title: Text('Online', style: TextStyle(color: Colors.black, fontSize: 23.0)),
    centerTitle: true,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    actions: [
      IconButton(icon: Icon(Icons.toggle_on_sharp, size: 40.0, color: Colors.amber[400],), onPressed: (){})
    ],
  );
}

AppBar appBarComp(String titulo, {double margen = 4.0, Color fondo = Colors.white}){
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    title: Text(titulo, style: TextStyle(color: Colors.black,fontSize: 22.0)),
    backgroundColor: fondo,
    elevation: margen,
  );
}

AppBar appBarWithAcions(String titulo, Widget accion){
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    title: Text(titulo, style: TextStyle(color: Colors.black,fontSize: 22.0)),
    backgroundColor: Colors.white,
    actions: [accion],
  );
}
