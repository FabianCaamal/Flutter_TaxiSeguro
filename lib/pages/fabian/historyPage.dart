import 'package:flutter/material.dart';
import 'package:taxi_seguro/components/appBarComp.dart';
import 'package:taxi_seguro/pages/fabian/historyRegistro.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarComp('Hitorial'),
      body: ListView(
        children: [
          Row(
            children: [
              fechas('Enero', '25', 'Vier', color: true),
              fechas('Enero', '26', 'Sab'),
              fechas('Enero', '27', 'Dom'),
              fechas('Enero', '28', 'Lun'),
              fechas('Enero', '29', 'Mar'),
            ],
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _tarjetas('Total Jobs', '\$10.0', Icons.local_car_wash),
                _tarjetas('Ganado', '\$500.0', Icons.attach_money),
              ],
            ),
          ),
          registro(),
          registro(),
        ],
      ),
    );
  }

  Widget fechas(String mes, String numDia, String dia, {bool color = false}){
    return Card(
      color: color ? Colors.amber[800] : Colors.white,
      margin: EdgeInsets.all(7.0),
      // shape: ShapeBorder(),
      child: Column(
        children: [
          _txt(mes, 23.0),
          _txt(numDia, 29.0),
          _txt(dia, 23.0),
        ],
      ),
    );
  }

  Widget _tarjetas(String dato, String total, IconData icono){
    return Container(
      color: Colors.amber[400],
      width: 200.0,
      height: 100.0,
      margin: EdgeInsets.all(5.0),
      child: Row(
        children: [
          Container(child: Icon(icono, size: 40.0,), margin: EdgeInsets.all(15.0)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _txt(dato, 25.0),
              _txt(total, 20.0),
            ],
          ),
        ],
      ),
    );
  }

  Widget _txt(String texto, double size) => Text(texto, style: TextStyle(fontSize: size));
}