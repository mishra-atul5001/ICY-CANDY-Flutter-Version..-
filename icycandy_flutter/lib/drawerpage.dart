import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:icycandy_flutter/drawers/drawer1.dart';
import 'package:icycandy_flutter/drawers/drawer2.dart';
import 'package:icycandy_flutter/drawers/drawer3.dart';
import 'package:icycandy_flutter/drawers/drawer4.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class drawerpage extends StatefulWidget{
  final draweritems=[
    new DrawerItem("Home",Icons.home),
    new DrawerItem("Trending",Icons.trending_up),
    new DrawerItem("My Freinds",Icons.motorcycle),
    new DrawerItem("My Uploads",Icons.file_upload),
  ];

  @override
  State<StatefulWidget> createState(){
    return new drawerhomepageState();

  }
}

class drawerhomepageState extends State<drawerpage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new FirstFragment();
      case 1:
        return new SecondFragment();
      case 2:
        return new ThirdFragment();
      case 3:
        return new FourthFragment();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.draweritems.length; i++) {
      var d = widget.draweritems[i];
      drawerOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
      );
    }
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ICY CANDY'),
        backgroundColor: Colors.orangeAccent,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.close), onPressed: ()=> exit(0),tooltip: 'Close App..!!',)
        ],
      ),
      drawer: new Drawer(
        elevation: 12.0,
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Icy World..!!",textScaleFactor: 2.0,style: new TextStyle(fontFamily: 'Skranji'),), accountEmail: null,currentAccountPicture: new Image.asset('asset/notifyicon.png',fit: BoxFit.fill,height: 180.0,),decoration: new BoxDecoration(color: Colors.orangeAccent,shape: BoxShape.rectangle,),),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }

  // ALERT DIALOG BOX TO BE ATTACHED..!!
  /*
  Future<Null> _neverSatisfied() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Rewind and remember'),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Text('You Wanna Exit..!!'),
                new Text('Press Back Button to STAY..!!'),
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('Exit..!!'),
              onPressed: () {
                    ()=> Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  } */
}

