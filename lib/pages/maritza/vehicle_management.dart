import 'package:flutter/material.dart';
import 'package:taxi_seguro/components/appBarComp.dart';

  class VehicleManagement extends StatefulWidget {
    @override
    _VehicleManagementState createState() => _VehicleManagementState();
  }
  
  class _VehicleManagementState extends State<VehicleManagement> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: appBarWithAcions('Vehicle management', TextButton( onPressed:(){}, child: new Text("+Add", style: TextStyle(fontSize: 18),))),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                   title: Text("Madza",style:TextStyle(color: Colors.black)),
                  subtitle: Text("65A3479",style:TextStyle(color: Colors.black54)),
                  leading:Image(image: AssetImage('assets/coche.png') ,),
                  trailing: Image(image: AssetImage('assets/verificado.png') ,),
                ),
              ),
                Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                   title: Text("Toyota",style:TextStyle(color: Colors.black)),
                  subtitle: Text("65C5432",style:TextStyle(color: Colors.black54)),
                  leading:Image(image: AssetImage('assets/coche.png') ,),
                  trailing: Image(image: AssetImage('assets/circle.png') ,),
                ),
              ),
            ]
          )
        )
      );
    }
  }
    