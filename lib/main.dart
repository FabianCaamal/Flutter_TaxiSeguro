import 'package:flutter/material.dart';

// AppBar y el Drawer
import 'package:taxi_seguro/components/navegation.dart';

// <===== Paquetes de Fabian =====>
import 'package:taxi_seguro/pages/fabian/perfilPage.dart';
import 'package:taxi_seguro/pages/fabian/mywallet.dart';
import 'package:taxi_seguro/pages/fabian/metodPayment.dart';
import 'package:taxi_seguro/pages/fabian/historyPage.dart';
import 'package:taxi_seguro/pages/fabian/notificationPage.dart';

// <===== Paquetes de Maritza =====>
import 'package:taxi_seguro/pages/maritza/document_manegement.dart';
import 'package:taxi_seguro/pages/maritza/configPage.dart';
import 'package:taxi_seguro/pages/maritza/vehicle_management.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: NavegationComp(),
      routes: _rutas(),
    );
  }

  // mapas para las rutas  
  Map<String, WidgetBuilder> _rutas(){
    return <String, WidgetBuilder>{
      'wallet': (context) => MyWalletPage(),
      'payment': (context) => MetodPayment(),
      'perfil': (context) => PerfilPage(),
      'notificaciones': (context) => NotifiPage(),
      'historial': (context) => HistoryPage(),

      'configuracion': (context) => ConfigPage(),
      'vehicle_management': (context) => VehicleManagement(),
      'document_management': (context) => DocumentManagement(),
    };
  }
}