import 'package:flutter/material.dart';

Widget cabezera(){
  return Container(
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20.0),
          height: 110.0,
          child: ClipOval(
            child: Image.asset('assets/driver.jpeg'),
          ),
        ),
        Text('Mario Mena', style: TextStyle(fontSize: 24.0),),
        // _tipoMiembro(),
      ],
    ),
  );
}

// Widget _tipoMiembro() {
//   return Center(
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         Icon(Icons.star, color: Colors.amber[400],),
//         Text('Gold member', style: TextStyle(fontSize: 18.0),)
//       ],
//     ),
//   );
// }

// Widget cabezera(){
//   return Container(
//     child: Column(
//       children: [
//         ClipRRect(
//           child: FadeInImage(
//             placeholder: AssetImage('assets/tenor.gif'),
//             image: NetworkImage('https://www.elsoldehermosillo.com.mx/doble-via/sxhjcp-jujutsu-kaisen/ALTERNATES/LANDSCAPE_1140/Jujutsu%20Kaisen',
//               scale: 8.0
//             ),
//           ),
//           borderRadius: BorderRadius.circular(30.0),
//         ),
//         Text('Fabian Caamal', style: TextStyle(fontSize: 24.0),),
//         // _tipoMiembro(),
//       ],
//     ),
//   );
// }