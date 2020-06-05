import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
 initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Schedule',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
   );
 }
}

class Calender extends StatefulWidget {
 Calender({Key key, this.title}) : super(key: key);

 final String title;

 @override
 _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Calender> with TickerProviderStateMixin {
 Map<DateTime, List> _events;
 AnimationController _animationController;
 CalendarController _calendarController;

 @override
 void initState() {
   super.initState();

   _calendarController = CalendarController();
  
   _animationController = AnimationController(
     vsync: this,
     duration: const Duration(milliseconds: 400),
   );

   _animationController.forward();
 }

 @override
 void dispose() {
   _animationController.dispose();
   _calendarController.dispose();
   super.dispose();
 }

 void _onDaySelected(DateTime day, List events) {
   print('CALLBACK: _onDaySelected');
   setState(() {
   });
 }

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.blueGrey,
     appBar: AppBar(
       title: Text('Calender'),
     ),
     body: Column(
       mainAxisSize: MainAxisSize.max,
       children: <Widget>[
         // Switch out 2 lines below to play with TableCalendar's settings
         //-----------------------
         _buildTableCalendar(),
         // _buildTableCalendarWithBuilders(),
         const SizedBox(height: 8.0),
      
       ],
     ),
   );
 }

 // Simple calendar
 Widget _buildTableCalendar() {
   return TableCalendar(
     calendarController: _calendarController,
     events: _events,
     startingDayOfWeek: StartingDayOfWeek.monday,
     calendarStyle: CalendarStyle(
       selectedColor: Colors.blue,
       todayColor: Colors.red,
       markersColor: Colors.red,
       outsideDaysVisible: false,
     ),
     headerStyle: HeaderStyle(
       formatButtonTextStyle: TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
       formatButtonDecoration: BoxDecoration(
         color: Colors.red,
         borderRadius: BorderRadius.circular(16.0),
       ),
     ),
     onDaySelected: _onDaySelected,
   );
 }

 // Making a table calendar

}
  
