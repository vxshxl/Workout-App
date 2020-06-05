import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Jawn extends StatefulWidget{
  @override
   Calarie createState() => Calarie();
}

class Calarie extends State<Jawn> {
  int weight = 0, height = 0, age = 0, bmr = 0, keep = 0, gain = 0, drop = 0;

  void female(){
    setState(() {
      bmr = (655 + (4.35 * weight) + (4.7 * height) - (4.7 * age)).toInt();
    });
  }
  void male(){
    setState(() {
      bmr = (66 + (6.23 * weight) + (12.7 * height) - (6.8 * age)).toInt();
    });
  }

  void one(){
    setState(() {
      keep = (bmr * 1.2).toInt();
      drop = (keep - 500);
      gain = (keep + 500);
    });
  }

  void two(){
    setState(() {
      keep = (bmr * 1.375).toInt();
      drop = (keep - 500);
      gain = (keep + 500);
    });
  }
  void three(){
    setState(() {
      keep = (bmr * 1.55).toInt();
      drop = (keep - 500);
      gain = (keep + 500);
    });
  }
  void four(){
    setState(() {
      keep = (bmr * 1.72).toInt();
      drop = (keep - 500);
      gain = (keep + 500);
    });
  }
  void five() {
    setState(() {
      keep = (bmr * 1.9).toInt();
      drop = (keep - 500);
      gain = (keep + 500);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Calorie Calculator'),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: 'Weight [pounds]'
                ),
                style: TextStyle(color:Colors.white),
                onChanged: (value){
                  setState(() {
                    weight = num.parse(value);
                  });
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Height [inches]'
                ),
                style: TextStyle(color:Colors.white),
                onChanged: (value){
                  setState(() {
                    height = num.parse(value);
                  });
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Age [years]'
                ),
                style: TextStyle(color:Colors.white),
                onChanged: (value){
                  setState(() {
                    age = num.parse(value);
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 40.0, right: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.redAccent,
                      child: Text('Female',style: TextStyle(
                        color: Colors.white
                      ),) , onPressed: () {
                        female();
                    },
                    ),
                    RaisedButton(
                      color: Colors.redAccent,
                      child: Text('Male',style: TextStyle(
                          color: Colors.white
                      ),) , onPressed: () {
                        male();
                    },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                child: Text('ACTIVITY SCALE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 22),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0,left: 0.0, right: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.pinkAccent,
                      child: Text('1',style: TextStyle(
                          color: Colors.white
                      ),) , onPressed: () {
                      one();
                    },
                    highlightColor: Colors.white,
                    ),
                    RaisedButton(
                      color: Colors.pinkAccent,
                      child: Text('2',style: TextStyle(
                          color: Colors.white
                      ),) , onPressed: () {
                      two();
                    },
                    highlightColor: Colors.white,
                    ),
                    RaisedButton(
                      color: Colors.pinkAccent,
                      child: Text('3',style: TextStyle(
                          color: Colors.white
                      ),) , onPressed: () {
                      three();
                    },
                    highlightColor: Colors.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.pinkAccent,
                      child: Text('4',style: TextStyle(
                          color: Colors.white
                      ),) , onPressed: () {
                      four();
                    },
                    highlightColor: Colors.white,
                    ),
                    RaisedButton(
                      color: Colors.pinkAccent,
                      child: Text('5',style: TextStyle(
                          color: Colors.white
                      ),) , onPressed: () {
                      five();
                    },
                    highlightColor: Colors.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text('Gain Weight : $gain Calories',
              style: TextStyle(fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.w200),),
              Text('Keep Weight : $keep Calories',
              style: TextStyle(fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.w200),),
              Text('Drop Weight : $drop Calories',
              style: TextStyle(fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.w200),),
            ],
          ),
        ),
      ),
    );
  }
}

