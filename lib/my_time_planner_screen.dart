import 'dart:math';
import 'package:flutter/material.dart';
import 'package:time_planner/time_planner.dart';

class MyTimePlannerScreen extends StatefulWidget {
  @override
  _MyTimePlannerScreenState createState() => _MyTimePlannerScreenState();
}

class _MyTimePlannerScreenState extends State<MyTimePlannerScreen> {

  List<TimePlannerTask> listTasks = [];

  void addEvent(BuildContext context) {
    List<Color> listColors = [
      Colors.purple,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.cyan
    ];

    setState(() {
      listTasks.add(
        TimePlannerTask(
          color: listColors[Random().nextInt(listColors.length)],
          dateTime: TimePlannerDateTime(
              day: Random().nextInt(10),
              hour: Random().nextInt(14) + 6,
              minutes: Random().nextInt(60)),
          minutesDuration: Random().nextInt(90) + 30,
          daysDuration: Random().nextInt(4) + 1,
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Time Planner Event is Clicked')));
          },
          child: Text(
            'Demo Event',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
      );
    });

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Random event is added to time planner!')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Time Planner Sample'),
        centerTitle: true,
      ),
      body: Center(
        child: TimePlanner(
          startHour: 6,
          endHour: 24,
          headers: [
            TimePlannerTitle(
              date: "8/23/2021",
              title: "Monday",
              dateStyle: TextStyle(fontSize: 14,  fontWeight: FontWeight.bold),
              titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TimePlannerTitle(
              date: "8/24/2021",
              title: "Tuesday",
              dateStyle: TextStyle(fontSize: 14,  fontWeight: FontWeight.bold),
              titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TimePlannerTitle(
              date: "8/25/2021",
              title: "Wednesday",
              dateStyle: TextStyle(fontSize: 14,  fontWeight: FontWeight.bold),
              titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TimePlannerTitle(
              date: "8/26/2021",
              title: "Thursday",
              dateStyle: TextStyle(fontSize: 14,  fontWeight: FontWeight.bold),
              titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TimePlannerTitle(
              date: "8/27/2021",
              title: "Friday",
              dateStyle: TextStyle(fontSize: 14,  fontWeight: FontWeight.bold),
              titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TimePlannerTitle(
              date: "8/28/2021",
              title: "Saturday",
              dateStyle: TextStyle(fontSize: 14,  fontWeight: FontWeight.bold),
              titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TimePlannerTitle(
              date: "8/29/2021",
              title: "Sunday",
              dateStyle: TextStyle(fontSize: 14,  fontWeight: FontWeight.bold),
              titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TimePlannerTitle(
              date: "8/30/2021",
              title: "Monday",
              dateStyle: TextStyle(fontSize: 14,  fontWeight: FontWeight.bold),
              titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TimePlannerTitle(
              date: "8/31/2021",
              title: "Tuesday",
              dateStyle: TextStyle(fontSize: 14,  fontWeight: FontWeight.bold),
              titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TimePlannerTitle(
              date: "9/01/2021",
              title: "Wednesday",
              dateStyle: TextStyle(fontSize: 14,  fontWeight: FontWeight.bold),
              titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TimePlannerTitle(
              date: "9/02/2021",
              title: "Thursday",
              dateStyle: TextStyle(fontSize: 14,  fontWeight: FontWeight.bold),
              titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TimePlannerTitle(
              date: "9/03/2021",
              title: "Friday",
              dateStyle: TextStyle(fontSize: 14,  fontWeight: FontWeight.bold),
              titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
          tasks: listTasks,
          style: TimePlannerStyle(
              showScrollBar: true
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addEvent(context),
        tooltip: 'Add random event',
        child: Icon(Icons.add),
      ),
    );
  }
}
