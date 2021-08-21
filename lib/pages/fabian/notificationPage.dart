import 'package:flutter/material.dart';
import 'package:taxi_seguro/components/appBarComp.dart';

class NotifiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarComp('Notificaciones'),
      body: ListView(
        children: [
          notifi('Promocion', '10% de descuento'),
          Divider(),
          notifi('Promocion', '10% de descuento'),
          Divider(),
          notifi('Promocion', '10% de descuento'),
          Divider(),
          notifi('Promocion', '10% de descuento'),
        ],
      ),
    );
  }

  Widget notifi(String titulo, String sub){
    return Container(
      // padding: EdgeInsets.all(10.0),
      child: ListTile(
        leading: Icon(Icons.notifications, color: Colors.amber[400],),
        title: Text(titulo, style: TextStyle(fontSize: 23.0),),
        subtitle: Text(sub),
        trailing: Icon(Icons.arrow_right),
        onTap: (){},
      ),
    );
  }
}