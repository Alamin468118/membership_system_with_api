import 'package:flutter/material.dart';

class PointClaimHistory extends StatelessWidget {
  const PointClaimHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              title: Text(
                'Event A Points Claim',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 15, 234, 208),
                ),
              ),
              subtitle: Text(
                'Points -40',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 245, 2, 2),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'Event B Points Claim',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 15, 234, 208),
                ),
              ),
              subtitle: Text(
                'Points -50',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 245, 2, 2),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'Event C Points Claim',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 15, 234, 208),
                ),
              ),
              subtitle: Text(
                'Points -10',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 245, 2, 2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
