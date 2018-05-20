import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class login extends StatelessWidget {
  const login ({
    Key key,
    @required this.onSubmit,
  }) : super(key:key);

  final VoidCallback onSubmit;
  static final TextEditingController _user = new TextEditingController();
  static final TextEditingController _pass = new TextEditingController();

  String get username => _user.text;
  String get password => _pass.text;

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 12.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          new Expanded(child: new Column(children: <Widget>[
            new TextField(textAlign: TextAlign.center,controller: _user,
              decoration: new InputDecoration(hintText: 'Enter a username'),),
            new Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
            new TextField(textAlign: TextAlign.center,controller: _pass,
                decoration: new InputDecoration(hintText: 'Enter a password'), obscureText: true),
            new Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
            new RaisedButton(child: new Text('Log - IN..!!'), onPressed: onSubmit,
              padding: const EdgeInsets.symmetric(vertical: 9.0,horizontal: 9.0),),
            new Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
            new Image(image: new AssetImage('asset/icy1.jpg'),alignment: Alignment.center,fit: BoxFit.fill,width: 250.0,height: 300.0,),
            new Padding(padding: const EdgeInsets.symmetric(vertical: 5.0)),
            new Text("Icy Candy..!!",style: new TextStyle(fontSize: 25.0,fontFamily: 'Skranji',letterSpacing: 2.0),softWrap: true,),
          ],))
          
        ],
      )
      );


  }
}