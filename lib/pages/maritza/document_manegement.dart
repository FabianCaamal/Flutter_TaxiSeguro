import 'package:flutter/material.dart';
import 'package:taxi_seguro/components/appBarComp.dart';

  class DocumentManagement extends StatefulWidget {
    @override
    _DocumentManagementState createState() => _DocumentManagementState();
  }
  
  class _DocumentManagementState extends State<DocumentManagement> {
    @override
    Widget build(BuildContext context) {
     return Scaffold(
        appBar: appBarWithAcions('Documentos', TextButton( onPressed:(){}, child: new Text("+Add", style: TextStyle(fontSize: 18),))),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.0)),
                margin: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/IdCard.png'
                ),
                
              ),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.0)),
                margin: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/licence.png'
                ),
                
              )
            ]
          )
        )
      );
    }
  }