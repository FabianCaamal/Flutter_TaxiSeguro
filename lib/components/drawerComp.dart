import 'package:flutter/material.dart';
import 'package:taxi_seguro/components/perfilComp.dart';

final colorUni = Colors.amber[400];

Widget drawerComp(BuildContext context){
  return Drawer(
    elevation: 10.0,
    semanticLabel: 'Menu',
    child: ListView(
      padding: EdgeInsets.only(right: 12.0, top: 20.0, left: 12.0),
      children: [
        ListTile(
          trailing: Icon(Icons.power_settings_new, size: 30.0, color: colorUni)
        ),
        cabezera(),
        Divider(color: Colors.white,),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('My Wallet'),
          onTap: () => Navigator.pushNamed(context, 'wallet'),
        ),
        divisor(),
        ListTile(
          leading: Icon(Icons.flip_camera_android_rounded),
          title: Text('Historial'),
          onTap: () => Navigator.pushNamed(context, 'historial'),
        ),
        divisor(),
        ListTile(
          leading: Icon(Icons.notifications_none),
          title: Text('Notificaciones'),
          onTap: () => Navigator.pushNamed(context, 'notificaciones'),
        ),
        divisor(), 
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Configuraciones'),
          onTap: () => Navigator.pushNamed(context, 'configuracion'),
        ),
        divisor(),
        ListTile(
          leading: Icon(Icons.directions_car_rounded),
          title: Text('New Booking Demo'),
          tileColor: colorUni,
          // contentPadding: EdgeInsets.only(),
        ),
        divisor()
      ],
    ),
  );
}

Widget divisor() => Divider(color: Colors.black, indent: 25.0, endIndent: 25.0,);
