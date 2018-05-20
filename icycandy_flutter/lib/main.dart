import 'package:flutter/material.dart';
import 'package:icycandy_flutter/login.dart';
import 'package:icycandy_flutter/welcomepage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String _title = 'Please Login';
  Widget _screen;
  login _login;
  welcomepage _welcomepage;
  bool _authenticated;

  _MyAppState() {
    _login = new login(onSubmit: (){onSubmit();});
    _welcomepage = new welcomepage();
    _screen = _login;
    _authenticated = false;
  }

  void onSubmit() {
    print('Login with: ' + _login.username + ' ' + _login.password);
    if(_login.username == 'user' && _login.password == 'user') {
      _setAuthenticated(true);
    }
  }

  void _goHome() {
    print('go home $_authenticated');

    setState(() {
      if(_authenticated == true) {
        _screen = _welcomepage;
      }
      else {
        _screen = _login;
      }
    }
    );
  }
  void _logout() {
    print('log out');
    _setAuthenticated(false);
  }

  void _setAuthenticated(bool auth) {
    setState(() {
      if(auth == true) {
        _screen = _welcomepage;
        _title = 'Welcome';
        _authenticated = true;
      }
      else {
        _screen = _login;
        _title = 'Please Login';
        _authenticated = false;
      }
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp (
      title: 'ICY CANDY',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ICY CANDY'),
          backgroundColor: Colors.orange,
          actions: <Widget>[
            new IconButton(padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 4.0),icon: new Icon(Icons.home), onPressed: (){_goHome();}),
            new IconButton(padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 4.0),icon: new Icon(Icons.exit_to_app), onPressed: (){_logout();}),
          ],
        ),
        body: new Container(
          child: _screen,
           margin: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 30.0),
        ),
        backgroundColor: Colors.orangeAccent[100],
      ),
    );
  }
}
