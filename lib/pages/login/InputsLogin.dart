import 'package:flutter/material.dart';

Widget crearEmail(){
  return Container(
    margin: EdgeInsets.only(
      top: 20,
      bottom: 20
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Correo electronico',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      cursorHeight: 10.0,
    ),
  );
}

Widget crearPassword(){
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Escriba su contraseña',
        labelText: 'Password',
        suffixIcon: Icon(Icons.visibility),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
  );
}

Widget crearBoton(BuildContext context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.amber[900], // background
      onPrimary: Colors.white,
      minimumSize: Size(80, 40)
    ),
    onPressed: () {
      Navigator.pushNamed(context, 'home');
     },
    child: Text('Iniciar sesion'),
  );
}