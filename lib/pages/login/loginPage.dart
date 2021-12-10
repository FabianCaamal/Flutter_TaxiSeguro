import 'package:flutter/material.dart';
import 'package:taxi_seguro/pages/login/InputsLogin.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Container(
            width: 400,
            height: 360,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Taxi Seguro', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25)),
                crearEmail(),
                crearPassword(),
                crearBoton(context)
              ],
            ),
          )
        ),
      )
    );
  }

}