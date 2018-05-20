import 'package:flutter/material.dart';
import 'package:icycandy_flutter/camerapage.dart';
import 'package:icycandy_flutter/drawerpage.dart';

class processbutterscotch extends StatelessWidget{
  String _title='ICY CANDY';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text(_title),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.fiber_pin), onPressed: (){},padding: const EdgeInsets.all(4.0)),
          new IconButton(icon: new Icon(Icons.person_outline), onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=> new drawerpage()));},padding: const EdgeInsets.all(4.0)),
        ],
      ),
      body: new Container(
        color: Colors.yellow[100],
        child: new Column(
          children: <Widget>[
            new Image(image: new AssetImage('asset/icy3.jpg'),height: 350.0,width: 3450.0,matchTextDirection: true,),
            new Text("Butter Scotch",textAlign: TextAlign.center,textScaleFactor: 3.0,style: new TextStyle(fontFamily: 'Skranji'),),
            new Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
            new RaisedButton(onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=> new camerapage()));},child: new Text("Let's Begin..!!",textScaleFactor: 2.0,style: new TextStyle(fontFamily: 'Skranji',
                color: Colors.lightBlueAccent),)
                ,highlightElevation: 5.0,
                elevation: 4.0,
                splashColor: Colors.orangeAccent,
                padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 8.0)),
            new Padding(padding: const EdgeInsets.symmetric(vertical: 10.0)),
            new RaisedButton(onPressed: (){},child: new Text("My Flavour is not There..!!",textScaleFactor: 2.0,style: new TextStyle(fontFamily: 'Skranji',
                color: Colors.lightBlueAccent),)
                ,highlightElevation: 5.0,
                elevation: 4.0,
                splashColor: Colors.orangeAccent,
                padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 8.0)),

          ],
        ),
      ),
    );
  }
}
