    import 'package:flutter/material.dart';
import 'package:icycandy_flutter/processpagebutterscotch.dart';
import 'package:icycandy_flutter/processpagechocolate.dart';
import 'package:icycandy_flutter/processpagemango.dart';
import 'package:icycandy_flutter/processpagevanilla.dart';
class welcomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new Text("Welcome to the World of ICY Candy..!!",style: new TextStyle(fontSize: 25.0,color: Colors.black),softWrap: true,textAlign: TextAlign.center,),
        new Padding(padding: const EdgeInsets.symmetric(vertical: 5.0)),
        new Text("Here we let the user design their Custom Ice Creams..!!",style: new TextStyle(fontSize: 24.0,color: Colors.black,letterSpacing: 3.0,fontFamily: 'Skranji'),softWrap: true,textAlign: TextAlign.center,),
        new FloatingActionButton(onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>new listview()),);},child: new Icon(Icons.arrow_forward),backgroundColor: Colors.orangeAccent[400],highlightElevation: 12.0,tooltip: "Let's Make One..!!",),
        new Image(image: new AssetImage('asset/icy2.jpg'),height: 250.0,width: 150.0,),
        new Text("You can design Something Like this..!!",style: new TextStyle(fontFamily: 'Inconsolata',fontSize: 22.0,color: Colors.black),textAlign: TextAlign.center,),
        new Text("Go Ahead and Design one of your Own..!!",style: new TextStyle(fontFamily: 'Inconsolata',fontSize: 18.0),)
      ],
      ),
    );
  }
}

class listview extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
   return new Container(
     color: Colors.orangeAccent,
     child: new Column(
       children: <Widget>[
         new Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
         new Text("Select Your Flavour Please..!!",style: new TextStyle(fontSize: 25.0,fontFamily: 'Skronji',color: Colors.black )),
         new Padding(padding: const EdgeInsets.symmetric(vertical: 10.0)),
         new CustomScrollView(
           shrinkWrap: true,
           slivers: <Widget>[
             new SliverPadding(
                 padding: const EdgeInsets.all(20.0),
               sliver: new SliverList(delegate: new SliverChildListDelegate(<Widget>[
                // new Text("Click Below to Proceed..!!",style: new TextStyle(fontSize: 22.0),),
                 new Row(
                 children: <Widget>[
                   new Image(image: new AssetImage('asset/mango.jpg'),height: 80.0,width: 120.0,),
                   new Padding(padding: const EdgeInsets.symmetric(horizontal: 1.0)),
                   new FlatButton(onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=> new processmango()),);}, child: new Text("Mango..!!",
                     textScaleFactor: 2.0,
                     style: new TextStyle(color: Colors.orange[800],
                         fontFamily: 'Skranji',
                         fontSize: 15.0),),),
                 ],
                 ),
                 new Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
                 new Row(
                   children: <Widget>[
                     new Image(image: new AssetImage('asset/butterscotch.jpeg'),height: 80.0,width: 120.0,),
                     new Padding(padding: const EdgeInsets.symmetric(horizontal: 0.0)),
                     new FlatButton(onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=> new processbutterscotch()));}, child: new Text("Butter Scotch..!!",textScaleFactor: 2.0,style: new TextStyle(color: Colors.orange[200],fontFamily: 'Skranji',fontSize: 15.0),),),
                   ],
                 ),
                 new Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
                 new Row(
                   children: <Widget>[
                     new Image(image: new AssetImage('asset/vanilla.jpg'),height: 80.0,width: 120.0,),
                     new Padding(padding: const EdgeInsets.symmetric(horizontal: 0.01)),
                     new FlatButton(onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=> new processvanilla()));}, child: new Text("Vanilla..!!",textScaleFactor: 2.0,style: new TextStyle(color: Colors.white70,fontFamily: 'Skranji',fontSize: 15.0),),),
                   ],
                 ),
                 new Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
                 new Row(
                   children: <Widget>[
                     new Image(image: new AssetImage('asset/chocolate.jpeg'),height: 80.0,width: 120.0,),
                     new Padding(padding: const EdgeInsets.symmetric(horizontal: 0.01)),
                     new FlatButton(onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=> new processchoco()));}, child: new Text("Chocolate..!!",textScaleFactor: 2.0,style: new TextStyle(color: Colors.brown,fontFamily: 'Skranji',fontSize: 15.0),),),
                   ],
                 ),
                 new Padding(padding: const EdgeInsets.symmetric(vertical: 3.0)),
                 new Image(image: new AssetImage('asset/samples1.jpeg'),height: 170.0,) ,
                
                  ])),
             ),
           ],
         )
       ],
     ),

   );
  }
}