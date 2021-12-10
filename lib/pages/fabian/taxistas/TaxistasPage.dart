import 'package:flutter/material.dart';
import 'package:taxi_seguro/components/appBarComp.dart';
import 'package:taxi_seguro/models/Taxistas.dart';
import 'package:taxi_seguro/pages/fabian/functions/getTaxistas.dart';
import 'package:taxi_seguro/pages/fabian/taxistas/TaxistaItem.dart';

class TaxistasPage extends StatefulWidget {

  @override
  _TaxistasPageState createState() => _TaxistasPageState();
}

class _TaxistasPageState extends State<TaxistasPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarComp('Taxistas' ),
      body: FutureBuilder<List<Taxista>>(
        future: getAllTaxistas(),
        builder: (context, snapshot){

          if(snapshot.data == null) {

            return Center( child: CircularProgressIndicator() );

            
          } else if(snapshot.hasError) {
            return Text('Hubo un error ${snapshot.error}');
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, i){
                return Container(
                  margin: EdgeInsets.only(bottom: 5),                  
                  child: taxistaItem(
                    '${snapshot.data[i].name} ${snapshot.data[i].lastName}', 
                    '${snapshot.data[i].email}', 
                    '${snapshot.data[i].estrellas}'
                  )
                );
              },
            );
          }

        },
      ),
    );
  }
}