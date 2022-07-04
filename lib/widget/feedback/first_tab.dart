import 'package:flutter/material.dart';

import '../../home_screen.dart';

final maxLines = 10;

Container FirstTab(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.5,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Container(
            child: Text("We value your feedback",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 10,
            right: 10,
          ),
          child: Container(
            height: maxLines * 25.0,
            child: TextField(
              maxLines: maxLines,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Please enter Your feedback here',
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Center(
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Text(
                'Submit',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              color: Colors.blue,
            ),
          ),
        ),
      ],
    ),
  );
}
