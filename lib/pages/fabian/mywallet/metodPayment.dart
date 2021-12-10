import 'package:flutter/material.dart';
import 'package:taxi_seguro/components/appBarComp.dart';

class MetodPayment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithAcions('Payment', 
        IconButton(icon: Text('Done', style: TextStyle(color: Colors.black, fontSize: 17.0),), onPressed: (){}, iconSize: 40.0,)
      ),
      body: ListView(
        children: [
          _metodo(),
          _metodo(),
          _metodo(),
          Divider(color: Colors.white,),
          Divider(color: Colors.white),
          Divider(color: Colors.white),
          _addPay(),
        ],
      ),
      // bottomSheet: _addPay(),
      // floatingActionButton: _addPay(),
      // floatingActionButtonAnimator: ,
    );
  }

  Widget _metodo(){
    return Card(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
      child: ListTile(
        leading: Icon(Icons.arrow_forward_outlined),
        title: Text('*** *** *** 8792'),
        subtitle: Text('Expira el 07/21'),
        onTap: (){},
      ),
    );
  }

  Widget _addPay(){
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: ElevatedButton(
        child: Text('Add metod payment', style: TextStyle(color: Colors.black)), 
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amber[400])),
        onPressed: (){}
    ),
    );
  }
}