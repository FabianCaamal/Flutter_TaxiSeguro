import 'package:flutter/material.dart';
import 'package:taxi_seguro/components/appBarComp.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarComp('Configuraciones'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Card(
              child: ListTile(
                title: Text("Mario Mena",style:TextStyle(color: Colors.black)),
                subtitle: Text("Gold member",style:TextStyle(color: Colors.black54)),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/driver.jpeg')
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () => Navigator.pushNamed(context, 'perfil'),
              ),
            ),
            const SizedBox(height: 15.0),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child:Column(
                children:<Widget>[
                  ListTile(
                    leading: Image(image: AssetImage('assets/auto.png') ,),
                    title: Text("Vehicle Management"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {

                        Navigator.pushNamed(context, 'vehicle_management');
                          },
                  ),
                  ListTile(
                    leading: Image(image: AssetImage('assets/cardStar.png') ,),
                    title: Text("Document Management"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                      Navigator.pushNamed(context, 'document_management');

                },
                  ),
                  ListTile(
                    leading: Image(image: AssetImage('assets/Star.png') ,),
                    title: Text("Review"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){

                },
                  ),
                  ListTile(
                    leading: Image(image: AssetImage('assets/world.png') ,),
                    title: Text("Language"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){

                },
                  ),
                ]
              )
            ),
            const SizedBox(height: 15.0),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children:<Widget>[
                  ListTile(
                    leading: Image(image: AssetImage('assets/Bell.png') ,),
                    title: Text("Notification"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){

                },
                  ),
                  ListTile(
                    leading: Image(image: AssetImage('assets/shield.png') ,),
                    title: Text("Terms and Privacy policy"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){

                },
                  ),
                ]

              )

            )
          ],
        )
      )

    );
  }
}