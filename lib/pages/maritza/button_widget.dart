import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.pushNamed(context, 'configuracion');
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
    ),
    child: Container(
      width: 200,
      height: 40,
      child: Row(
        children: [
          SizedBox(width: 14,),
          Text('Get Started', style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center)
        ],
      ),
    ),
  );
}