import 'package:flutter/material.dart';

Widget registro(){
  return Container(
    margin: EdgeInsets.all(25.0),
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
                _txt('Nombre', 20.0),
                _txt('tipo', 18.0),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150.0),
              child: Column(  
                children: [
                  _txt('\$25.0', 25.0),
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
