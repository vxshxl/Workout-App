import 'package:flutter/material.dart';

class Profile extends StatefulWidget{
  @override
   ProfState createState() => ProfState();
}

class ProfState extends State<Profile> {
  @override

Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Profile"),
      ),
          body: Padding(
       padding: EdgeInsets.fromLTRB(15.0,30.0,30.0,0.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Text(
             'Name',
             style: TextStyle(
               color:Colors.white,
               letterSpacing: 2.0,
               fontWeight: FontWeight.w100,
             )
           ),
           SizedBox(height: 10.0),
           Text(
               'Jack Peterson',
               style: TextStyle(
                 color:Colors.black,
                 letterSpacing: 2.0,
                 fontSize: 25.0,
                 fontWeight: FontWeight.w400,
               )
           ),
           SizedBox(height: 20.0),
           new Divider(
             color: Colors.red,
           ),
           Text(
               'Bio',
               style: TextStyle(
                 color:Colors.white,
                 letterSpacing: 2.0,
                 fontWeight: FontWeight.w100,
               )
           ),
           SizedBox(height: 10.0),
           Text(
               'Powerlifter 💪 and Love to Bench',
               style: TextStyle(
                   color:Colors.black,
                   letterSpacing: 2.0,
                   fontSize: 16.0,
                   fontWeight: FontWeight.w400
               )
           ),
           SizedBox(height: 20.0),
           new Divider(
             color: Colors.red,
           ),
           Row(
             children: <Widget>[
               Icon(
                 Icons.email,
                 color:Colors.white,
               ),
               SizedBox(width: 10.0),
               Text(
                 'jackpeterson@gmail.com',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 16.0,
                   letterSpacing: 1.0,
                   fontWeight: FontWeight.w400
                 )
               ),
               SizedBox(height: 20.0),
             ]
           ),
           SizedBox(height: 20.0),
           new Divider(
             color: Colors.red,
           ),
           Text(
               'Age',
               style: TextStyle(
                 color:Colors.white,
                 letterSpacing: 2.0,
                 fontWeight: FontWeight.w100,
               )
           ),
           SizedBox(height: 10.0),
           Text(
               '18',
               style: TextStyle(
                   color:Colors.black,
                   letterSpacing: 2.0,
                   fontSize: 16.0,
                   fontWeight: FontWeight.w400
               )
           ),
           SizedBox(height: 20.0),
           new Divider(
             color: Colors.red,
           ),
           Text(
               'Sex',
               style: TextStyle(
                 color:Colors.white,
                 letterSpacing: 2.0,
                 fontWeight: FontWeight.w100,
               )
           ),
           SizedBox(height: 10.0),
           Text(
               'Male',
               style: TextStyle(
                   color:Colors.black,
                   letterSpacing: 2.0,
                   fontSize: 16.0,
                   fontWeight: FontWeight.w400
               )
           ),
           SizedBox(height: 20.0),
           new Divider(
             color: Colors.red,
           ),
           Text(
               'Height',
               style: TextStyle(
                 color:Colors.white,
                 letterSpacing: 2.0,
                 fontWeight: FontWeight.w100,
               )
           ),
           SizedBox(height: 10.0),
           Text(
               '5ft 7in',
               style: TextStyle(
                   color:Colors.black,
                   letterSpacing: 2.0,
                   fontSize: 16.0,
                   fontWeight: FontWeight.w400
               )
           ),
           SizedBox(height: 20.0),
           new Divider(
             color: Colors.red,
           ),
           Text(
               'Weight',
               style: TextStyle(
                 color:Colors.white,
                 letterSpacing: 2.0,
                 fontWeight: FontWeight.w100,
               )
           ),
           SizedBox(height: 10.0),
           Text(
               '150 lbs',
               style: TextStyle(
                   color:Colors.black,
                   letterSpacing: 2.0,
                   fontSize: 16.0,
                   fontWeight: FontWeight.w400
               )
           ),
         ],
       ),
     ),
   );
 }
}