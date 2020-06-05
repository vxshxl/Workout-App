import 'package:flutter/material.dart';

class Submit extends StatefulWidget{
  @override
   Enter createState() => Enter();
}

class Enter extends State<Submit> {
  var name = "", sets = "", rep = "", pmg = "", smg = "";
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Create Workouts'),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text('Exercise Name : $name ',
              style: TextStyle(fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.w200),),
              Text('Primary Muscle Group : $pmg ',
              style: TextStyle(fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.w200),),
              Text('Secondary Muscle Group : $smg ',
              style: TextStyle(fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.w200),),
              Text('Reps : $rep ',
              style: TextStyle(fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.w200),),
              Text('Sets : $sets ',
              style: TextStyle(fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.w200),),
            ]
          )
        )
      )
    );
  }
}