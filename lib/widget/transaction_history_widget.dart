import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              title: Text(
                'RM 20.00',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 255, 230, 0),
                ),
              ),
              subtitle: Text(
                'Points +20',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 228, 135, 220),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'RM 50.00',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 255, 230, 0),
                ),
              ),
              subtitle: Text(
                'Points +50',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 228, 135, 220),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'RM 10.00',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 255, 230, 0),
                ),
              ),
              subtitle: Text(
                'Points +10',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 228, 135, 220),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'RM 10.00',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 255, 230, 0),
                ),
              ),
              subtitle: Text(
                'Points +10',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 228, 135, 220),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'RM 15.00',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 255, 230, 0),
                ),
              ),
              subtitle: Text(
                'Points +15',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 228, 135, 220),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'RM 15.00',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 255, 230, 0),
                ),
              ),
              subtitle: Text(
                'Points +15',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 228, 135, 220),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              // leading: FlutterLogo(size: 72.0),
              // title: Text('Three-line ListTile'),
              // subtitle: Text(
              //     'A sufficiently long subtitle warrants three lines.'),
              // isThreeLine: true,
              title: Text(
                'RM 20.00',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 255, 230, 0),
                ),
              ),
              subtitle: Text(
                'Points +20',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 228, 135, 220),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
