import 'package:flutter/material.dart';
import 'package:icycandy_flutter/drawers/drawer1.dart';
import 'package:icycandy_flutter/drawers/drawer2.dart';
import 'package:icycandy_flutter/drawers/drawer3.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class drawerpage extends StatefulWidget{
  final draweritems=[
    new DrawerItem("Trending",Icons.assistant),
    new DrawerItem("drawer2",Icons.assistant),
    new DrawerItem("drawer3",Icons.assistant),
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
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Icy World..!!"), accountEmail: null),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
