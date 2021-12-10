import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:taxi_seguro/models/Taxistas.dart';

Future<List<Taxista>> getAllTaxistas() async {

  final response = await http.get(Uri.parse('http://192.168.1.108:4000/taxistas'));

  if(response.statusCode == 200) {

    var jsonData = jsonDecode(response.body);

    List<Taxista> taxistasArr = [];

    for(var json in jsonData){
      Taxista taxista = Taxista(
        sId: json['_id'], 
        name: json['name'],
        lastName: json['last_name'],
        email: json['email'],
        estrellas: json['estrellas'],
        modeloTaxi: json['modelo_taxi']
      );

      taxistasArr.add(taxista);
    }

    return taxistasArr;

  } else {
    throw Exception('fallo ${response.statusCode} ');
  }

}