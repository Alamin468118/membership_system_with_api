// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'dart:async';

// class MyWidget extends StatelessWidget {
//    MyWidget({Key? key, required this.title}) : super(key: key);

//   final String title;

//   String date = "";
//   DateTime selectedDate = DateTime.now();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Text("${selectedDate.toLocal()}".split(' ')[0]),
//               SizedBox(
//                 height: 10,
//               ),
//               RaisedButton(
//                 onPressed: () => _selectedDate(context),
//                 child: Text('Select Date'),
//               ),
//               Text(
//                 "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
//               ),
//             ],
//           ),
//         ),
//     );
//   }

//   _selectedDate(BuildContext context) async{
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: selectedDate,
//       firstDate: DateTime(1960, 8),
//       lastDate: DateTime(2101),
//     );
//     if (picked != null && picked != selectedDate) {
//       selectedDate = picked;
//       setState(() {});
//     }
//   }
// }

class Calendar extends StatefulWidget {
  const Calendar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  String date = " ";
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () => _selectDate(context),
              child: Text('Select Date'),
            ),
            Text(
              "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
            ),
          ],
        ),
      ),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? _selectedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1960, 8),
      lastDate: DateTime(2101),
    );
    if (_selectedDate != null && _selectedDate != selectedDate) {
      setState(() {
        selectedDate = _selectedDate;
      });
    }
  }
}
