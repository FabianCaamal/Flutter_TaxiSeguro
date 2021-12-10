import 'package:flutter/material.dart';

Widget registro(String name, String tipo, double distancia ){
  return Container(
    margin: EdgeInsets.only(top: 15),
    color: Colors.amber[50],
    child: Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(25.0),
              child: Icon(Icons.backup, size: 30.0,),
            ),
            Column(
              children: [
                _txt(name, 20.0),
                _txt('Tipo: $tipo', 18.0),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150.0),
              child: Column(  
                children: [
                  _txt('\$$distancia', 25.0),
                  _txt('2.2 km', 16.0)
                ],
              ),
            )
          ],
        ),
        Card(
          child: Column(
            children: [
              datos(),
              datos(),
            ],
          ),
        )
      ],
    ),
  );
}

Widget datos(){
  return ListTile(
    title: Text('pickUp'),
    subtitle: Text('Detalles de la operacion'),
  );
}

Widget _txt(String texto, double size) => Text(texto, style: TextStyle(fontSize: size));
