import 'package:flutter/material.dart';
import 'package:taxi_seguro/components/appBarComp.dart';

class MyWalletPage extends StatelessWidget {

  final divisor = Divider(color: Colors.amber[400]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarComp('My Wallet', fondo: Colors.amber[400], margen: 0.0),
      body: ListView(
        children: [
          Container(
            color: Colors.amber[400],
            height: 200.0,
            child: Column( 
              children: [
                divisor,
                Center(child: Text('\$250.00', style: TextStyle(fontSize: 45.0),),),
                Center(child: Text('Total a pagar', style: TextStyle(fontSize: 20.0)),),
                divisor,
                divisor,
                divisor,
                metodoPago(context),
              ],
            ),
          ),
          Divider(color: Colors.white,),
          Text('Historial de pagos', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0),),
          Divider(color: Colors.white,),
          historialPagos(),
        ],
      ),
    );
  }

  Widget metodoPago(BuildContext context){
    return Card(
      margin: EdgeInsets.only(left: 25.0, right: 25.0),
      child: ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage('https://previews.123rf.com/images/asmati/asmati1702/asmati170211061/72682065-d%C3%B3lares-firman-la-ilustraci%C3%B3n-s%C3%ADmbolo-de-moneda-usd-etiqueta-de-dinero-icono-negro-con-la-ruta-de-sombra-est.jpg'),),
        title: Text('Metodo de Pago'),
        trailing: Icon(Icons.arrow_forward),
        onTap: (){
          Navigator.pushNamed(context, 'payment');
        },
      ),
    );
  }

  Widget historialPagos(){
    return Card(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage('https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/2/5/7/4/2574f9070ce48b988fe2693a60c40427.jpg'),),
            title: Text('Fabian Caamal'),
            subtitle: Text('#2332'),
            trailing: Text('\$25.00', style: TextStyle(fontSize: 20.0)),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage('https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/2/5/7/4/2574f9070ce48b988fe2693a60c40427.jpg'),),
            title: Text('Ricardo Caamal'),
            subtitle: Text('#2332'),
            trailing: Text('\$20.00', style: TextStyle(fontSize: 20.0),),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage('https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/2/5/7/4/2574f9070ce48b988fe2693a60c40427.jpg'),),
            title: Text('Ricardo Caamal'),
            subtitle: Text('#2332'),
            trailing: Text('\$20.00', style: TextStyle(fontSize: 20.0),),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}