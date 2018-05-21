import 'package:flutter/material.dart';

class FirstFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.orangeAccent[100],
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: const EdgeInsets.all(8.0)),
        new Image.asset('asset/navicy1.jpg',height: 450.0,width: 450.0,),
            new Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
         new Text("Here You get to See your Home Page of the ICY WORLD Media..!!",style: new TextStyle(fontFamily: 'Skranji',letterSpacing: 2.0,fontSize: 18.0,wordSpacing: 2.0),textAlign: TextAlign.center,),
          ],
        ),
      )
    );
  }

}