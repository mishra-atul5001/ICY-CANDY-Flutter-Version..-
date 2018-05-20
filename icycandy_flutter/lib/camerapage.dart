import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class camerapage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<camerapage> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ICY CANDY'),
        backgroundColor: Colors.orange,
      ),
      body: new Container(
        color: Colors.orangeAccent[100],
        child: new Center(
          child: _image == null
              ? new Text('No image selected.',style: new TextStyle(fontFamily: 'Skranji',fontSize: 25.0),)
              : new Image.file(_image),
        ),

    ),
      floatingActionButton: new FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: new Icon(Icons.add_a_photo),
      ),
    );
  }
}