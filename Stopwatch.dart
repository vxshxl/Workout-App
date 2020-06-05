import 'dart:async'; 
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Watch extends StatefulWidget {
 @override
 Thisone createState() => Thisone();
}

class Thisone extends State<Watch> {

bool startispressed = true;
bool stopisspressed = true;
bool resetispressed = true;
String stoptimetodisplay = "00:00:00";
var swatch = Stopwatch();
final dur = const Duration(seconds: 1);

void starttimer(){
  Timer(dur, keeprunning);
}

void keeprunning(){
  if(swatch.isRunning){
    starttimer();
  }
  setState(() {
    stoptimetodisplay = swatch.elapsed.inHours.toString().padLeft(2, "0") + ":"
                        + (swatch.elapsed.inMinutes%60).toString().padLeft(2,"0") + ":"
                        + (swatch.elapsed.inSeconds%60).toString().padLeft(2,"0");
                        
  });
}

void startstopwatch(){
  setState(() {
    stopisspressed = false;
    startispressed = false;
  });
  swatch.start();
  starttimer();
}

void stopstopwatch(){
  setState(() {
    stopisspressed = true;
    resetispressed = false;
  });
  swatch.stop();
}
void resetstopwatch(){
  setState(() {
    startispressed = true;
    resetispressed = true;
  });
  swatch.reset();
  stoptimetodisplay = '00:00:00'
;}

Widget build(BuildContext context){
    return Scaffold(
            backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Stopwatch'),
        centerTitle: true,
      ),
  body: Container(
    child: Column(
      children: <Widget>[
        Expanded(
          flex: 6,
    child: Container(
      alignment: Alignment.center,
    child: Text(
      stoptimetodisplay,
      style: TextStyle(
        fontSize: 80.0,
        color: Colors.white,
        fontWeight: FontWeight.w100
              ),
            ),
          ),
        ),
        Expanded(
          flex: 4,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: stopisspressed ? null : stopstopwatch,
                  color: Colors.redAccent,
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 20.0
                  ),
                  child: Text(
                    "STOP",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w200
          ),
        ),
        ),
        RaisedButton(
                  onPressed:resetispressed ? null : resetstopwatch,
                  color: Colors.indigo,
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 20.0
                  ),
                  child: Text(
                    "RESET",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w200
                    ),
                    ),
                    )
              ],
              ),
              RaisedButton(
                onPressed: startispressed ? startstopwatch: null,
                color: Colors.green,
                padding: EdgeInsets.symmetric(
                  horizontal: 80.0,
                  vertical: 20.0,
                ),
                child: Text(
                  "START",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300
                  ),
                ),
              ),
            ],
          ),
        ),
        ),
      ],
    ),
  )
);
}
}
