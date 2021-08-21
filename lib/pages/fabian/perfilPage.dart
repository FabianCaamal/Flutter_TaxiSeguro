import 'package:flutter/material.dart';
import 'package:taxi_seguro/components/appBarComp.dart';
import 'package:taxi_seguro/components/perfilComp.dart';

class PerfilPage extends StatelessWidget {

  final divisor = Divider(color: Colors.white10,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithAcions('Perfil', 
        IconButton(icon: Text('Editar', style: TextStyle(color: Colors.black, fontSize: 16.0),), onPressed: (){}, iconSize: 43.0,)
      ),
      body: ListView(
        children: [
          divisor,
          divisor,
          cabezera(),
          divisor,
          Text('Informacion', style: TextStyle(fontSize: 25.0)),
          Card(
            child: Column(
              children: [
                _info('Nombre de usuario:', 'Fabian'),
                _info('Numero:', '99-992-99-99'),
                _info('Email:', 'fabian@correo.com'),
                _info('Genero:', 'Masculino'),
                _info('Cumpleanos:', '24 de febrero'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _info(String info, String dato){
   return ListTile(
     leading: Text(info, style: TextStyle(fontSize: 20.0)),
     trailing: Text(dato, style: TextStyle(fontSize: 17.0)),
   );
  }
}
    