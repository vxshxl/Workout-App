/*
Name: main.dart
Purpose: Main file of our project that sets up the 
home page and calls other files in our project
Version: 1.0  6/7/20
Author(s): Vishal Tailor 
Dependencies: Must have all other files in project
to run
*/
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gyminprogress/Calarie.dart';
import 'package:gyminprogress/calender.dart';
import 'package:gyminprogress/Stopwatch.dart';
import 'package:gyminprogress/Workout.dart';
import 'package:gyminprogress/Profile.dart';
import 'package:gyminprogress/Settings.dart';


void main() => runApp(GIP());

class GIP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GIP v2',
      theme: new ThemeData(primarySwatch: Colors.yellow),
      home: new Home(
      ),
    );
  }
}

/*

*/

/*
style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w200
*/


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: new AppBar(
      title: new Text("Gym In Progress",style: TextStyle(fontSize:25.0,fontWeight: FontWeight.w300),),
      elevation: debugDefaultTargetPlatformOverride == TargetPlatform.android?5.0:0.0,
    ), 
    drawer: new Drawer(
      child: Container(color: Colors.blueGrey,
        child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
          accountName: new Text("GIP"), 
          accountEmail: new Text("GymInProgress@gmail.com"),
          currentAccountPicture: new CircleAvatar(
            backgroundColor: Colors.white,
            child: new Text("Person"),
          ),
          otherAccountsPictures: <Widget>[
            new CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: ExactAssetImage("assests/images/GIPLOGO.png")
            )
          ],
          ),
          new ListTile(
              title: new Text('Profile',
              style: TextStyle(color: Colors.white),),
              trailing: new Icon(Icons.arrow_right,
              color:Colors.white,),
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
               );
              },
          ),
          new ListTile(
              title: new Text('Schedule',
              style: TextStyle(color: Colors.white),),
              trailing: new Icon(Icons.arrow_right,
              color:Colors.white,),
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Calender ()),
               );
              },              
          ),
          new ListTile(
              title: new Text('Workouts',
              style: TextStyle(color: Colors.white),),
              trailing: new Icon(Icons.arrow_right,
              color:Colors.white,),
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => This()),
               );
              },              
          ),
          new ListTile(
              title: new Text('Timer',
              style: TextStyle(color: Colors.white),),
              trailing: new Icon(Icons.arrow_right,
              color:Colors.white,),
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Watch()),
               );
              },              
          ),
          new ListTile(
              title: new Text('Calories',
              style: TextStyle(color: Colors.white),),
              trailing: new Icon(Icons.arrow_right,
              color:Colors.white,),
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Jawn()),
               );
              },             
          ),
          new ListTile(
              title: new Text('Settings',
              style: TextStyle(color: Colors.white),),
              trailing: new Icon(Icons.arrow_right,
              color:Colors.white,),
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
               );
              },              
          ),
          new Divider(),
          new ListTile(
              title: new Text('Close',
              style: TextStyle(color: Colors.white),),
              trailing: new Icon(Icons.close,
              color:Colors.red,),
              onTap: ()=> Navigator.of(context).pop(),
          ),
        ],
      ),
      )
    ),
    body: 
        Image(image: AssetImage('assests/images/GIPLOGO.png'))
      
    );
  }
}
