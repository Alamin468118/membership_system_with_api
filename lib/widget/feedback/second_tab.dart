import 'package:flutter/material.dart';


Container SecondTab(BuildContext context) {
    return Container(
                height: MediaQuery.of(context).size.height * 0.55,
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
                          'Feedback 1',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 231, 86, 14),
                          ),
                        ),
                        subtitle: Text(
                          'Feedback 1 info',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 2, 9, 78),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text(
                          'Feedback 2',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 231, 86, 14),
                          ),
                        ),
                        subtitle: Text(
                          'Feedback 2 info',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 2, 9, 78),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text(
                          'Feedback 3',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 231, 86, 14),
                          ),
                        ),
                        subtitle: Text(
                          'Feedback 3 info',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 2, 9, 78),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text(
                          'Feedback 4',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 231, 86, 14),
                          ),
                        ),
                        subtitle: Text(
                          'Feedback 4 info',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 2, 9, 78),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text(
                          'Feedback 5',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 231, 86, 14),
                          ),
                        ),
                        subtitle: Text(
                          'Feedback 5 info',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 2, 9, 78),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text(
                          'Feedback 6',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 231, 86, 14),
                          ),
                        ),
                        subtitle: Text(
                          'Feedback 6 info',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 2, 9, 78),
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
                          'Feedback 7',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 231, 86, 14),
                          ),
                        ),
                        subtitle: Text(
                          'Feedback 7 info',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 2, 9, 78),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
  }
