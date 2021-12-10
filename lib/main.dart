import 'package:flutter/material.dart';

// AppBar y el Drawer
import 'package:taxi_seguro/components/navegation.dart';
import 'package:taxi_seguro/pages/fabian/history/historyPage.dart';
import 'package:taxi_seguro/pages/fabian/mywallet/metodPayment.dart';
import 'package:taxi_seguro/pages/fabian/mywallet/mywallet.dart';

// <===== Paquetes de Fabian =====>
import 'package:taxi_seguro/pages/fabian/notificationPage.dart';
import 'package:taxi_seguro/pages/fabian/taxistas/TaxistasPage.dart';
import 'package:taxi_seguro/pages/login/loginPage.dart';

// <===== Paquetes de Maritza =====>
import 'package:taxi_seguro/pages/maritza/document_manegement.dart';
import 'package:taxi_seguro/pages/maritza/configPage.dart';
import 'package:taxi_seguro/pages/maritza/profile/changePhoto.dart';
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
      initialRoute: 'login',
    );
  }

  // mapas para las rutas  
  Map<String, WidgetBuilder> _rutas(){
    return <String, WidgetBuilder>{

      'login': (context) => LoginPage(),
      'home': (context) => NavegationComp(),
      'wallet': (context) => MyWalletPage(),
      'taxistas': (context) => TaxistasPage(),
      'payment': (context) => MetodPayment(),
      'perfil': (context) => ProfilePage(),
      'notificaciones': (context) => NotifiPage(),
      'historial': (context) => HistoryPage(),
      'configuracion': (context) => ConfigPage(),
      'vehicle_management': (context) => VehicleManagement(),
      'document_management': (context) => DocumentManagement(),
    };
  }
}