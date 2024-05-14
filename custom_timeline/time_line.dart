// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Custom timeline',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Page(),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'custom_time_line.dart';
import 'time_line_item.dart';

class TimeLinePage extends StatelessWidget {
  TimeLinePage({super.key});

  final activeColor = Colors.green[800]!;
  final inactiveColor = Colors.grey[600]!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(right: 160),
          child: CustomTimeLine(
            activeColor: activeColor,
            inactiveColor: inactiveColor,
            content: [
              TimeLineItem(label: "First Lecture", color: activeColor,style: const TextStyle(color: Colors.white)),
              TimeLineItem(label: "Second Lecture", color: activeColor),
              TimeLineItem(label: "Third Lecture", color: activeColor),
              TimeLineItem(label: "Fourth Lecture", color: activeColor),
              TimeLineItem(
                  label: "Fifth Lecture", color: inactiveColor, isActive: false),
              TimeLineItem(
                  label: "Sixth Lecture", color: inactiveColor, isActive: false),
            ],
          ),
        ),
      ),
    );
  }
}
