/*
Name: Workout.dart
Purpose: Code that alows the user to input the
information for thier workout and then passes
that information onto Submit.dart where it's displayed
Version: 1.0  6/7/20
Author(s): Vishal Tailor 
Dependencies: Submit.dart
*/
import 'package:flutter/material.dart';
import 'package:gyminprogress/Submit.dart';

class This extends StatefulWidget{
  @override
   Workout createState() => Workout();
}

class Workout extends State<This> {
  String name , sets , rep , pmg , smg ;
  

@override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Create Workouts',style: TextStyle(fontSize:25.0,fontWeight: FontWeight.w300),),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: 'Exercise Name'
                ),
                style: TextStyle(color:Colors.white),
                onChanged: (value){
                  setState(() {
                    name = value;
                  });
                },
              ),
              SizedBox(
                height: 40.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Primary Muscle Group'
                ),
                style: TextStyle(color:Colors.white),
                onChanged: (value){
                  setState(() {
                    pmg = value;
                  });
                },
              ),
              SizedBox(
                height: 40.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Secondary Muscle Group'
                ),
                style: TextStyle(color:Colors.white),
                onChanged: (value){
                  setState(() {
                    smg = value;
                  });
                },
              ),SizedBox(
                height: 40.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Reps'
                ),
                style: TextStyle(color:Colors.white),
                onChanged: (value){
                  setState(() {
                    rep = value;
                  });
                },
              ),
              SizedBox(
                height: 40.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Sets'
                ),
                style: TextStyle(color:Colors.white),
                onChanged: (value){
                  setState(() {
                    sets = value;
                  });
                },
              ),
              Expanded(
                child: Container(
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
              Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.cyan[200],
                      padding: EdgeInsets.symmetric(
                      horizontal: 80.0,
                      vertical: 20.0
                      ,),
                      child: Text('Submit',style: TextStyle(
                        color: Colors.black,fontWeight: FontWeight.w200
                      ),) , 
                      onPressed: () {
                        Navigator.push(
                          context,
                        MaterialPageRoute(builder: (context) => Submit ( 
                          name: name,
                          sets: sets,
                          rep: rep,
                          pmg: pmg,
                          smg: smg,
                        )),
                        );
                        },
                    ),
                  ]
                ),]),)
              )
            ]
          )
        ),
      ),
    );
    }
  }
