import 'package:flutter/material.dart';

Widget taxistaItem (String name, String email, String estrellas){
  return Container(
    margin: EdgeInsets.only(top: 10, left: 7, right: 7),
    child: ListTile(
      tileColor: Colors.amber[300],             
      leading: Icon(Icons.verified_user),
      title: Text(name, style: TextStyle( fontSize: 19, fontWeight: FontWeight.w600 )),
      subtitle: Text(email, style: TextStyle(fontSize: 15),),
      trailing: Text('$estrellas estrellas', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
    ),
  );
}