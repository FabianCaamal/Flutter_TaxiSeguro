import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taxi_seguro/components/appBarComp.dart';

class ProfilePage extends StatefulWidget {
 
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File _pickedImage;
  final imgPicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithAcions('Perfil', 
        IconButton(icon: Text('Editar', style: TextStyle(color: Colors.black, fontSize: 16.0),), onPressed: (){}, iconSize: 43.0,)
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 15.0),
          Center(
            child: GestureDetector(
              onTap: () {
                _showPickOptionsDialog(context);
              },
              child: CircleAvatar(
                radius: 80,
                child: _pickedImage == null ? _imageDefault() : null,
                backgroundImage:
                    _pickedImage != null ? FileImage(_pickedImage) : null,
              ),
            ),
          ),

          Text('Informacion', style: TextStyle(fontSize: 25.0)),
          Card(
            child: Column(
              children: [
                infoItem('Nombre de usuario:', 'Mario Mena'),
                infoItem('Numero:', '99-992-99-99'),
                infoItem('Email:', 'mario@correo.com'),
                infoItem('Genero:', 'Masculino'),
                infoItem('Cumpleanos:', '24 de febrero'),
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget _imageDefault(){
    return ClipOval(
      child: Image.asset('assets/driver.jpeg'),
    );
  }

  Widget infoItem(String info, String dato){
   return ListTile(
     leading: Text(info, style: TextStyle(fontSize: 20.0)),
     trailing: Text(dato, style: TextStyle(fontSize: 17.0)),
   );
  }

  //funciones de cámara y galería
  _loadPicker(ImageSource source) async {
    // ignore: deprecated_member_use
    PickedFile picked = await imgPicker.getImage(source: ImageSource.gallery);
    _pickedImage = File(picked.path);
    if (picked != null) {
      _cropImage(_pickedImage);
    }
    Navigator.pop(context);
  }

  _loadPickerC(ImageSource source) async {
    // ignore: deprecated_member_use
    PickedFile picked = await imgPicker.getImage(source: ImageSource.camera);
    _pickedImage = File(picked.path);
    if (picked != null) {
      _cropImage(_pickedImage);
    }
    Navigator.pop(context);
  }

  //Cortar imágen

  _cropImage(File picked) async {
    File cropped = await ImageCropper.cropImage(
      androidUiSettings: AndroidUiSettings(
        statusBarColor: Colors.amber,
        toolbarColor: Colors.amber,
        toolbarTitle: "Cortar imágen",
        toolbarWidgetColor: Colors.white,
      ),
      sourcePath: picked.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
      maxWidth: 800,
    );
    if (cropped != null) {
      setState(() {
        _pickedImage = cropped;
      });
    }
  }
  // Selector de opciones

  void _showPickOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Opciones"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text("Elegir desde la galería"),
              onTap: () {
                _loadPicker(ImageSource.gallery);
              },
            ),
            ListTile(
              title: Text("Tomar foto"),
              onTap: () {
                _loadPickerC(ImageSource.camera);
              },
            )
          ],
        ),
      ),
    );
  }
}
