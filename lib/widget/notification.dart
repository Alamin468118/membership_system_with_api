import 'package:flutter/material.dart';
import 'package:membership_system_1/home_screen.dart';

class AppNotification extends StatelessWidget {
  const AppNotification({Key? key}) : super(key: key);

  // The reason name App Notification because of conflict with Notification class that had been build in Flutter
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    Text("Notification",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
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
                          'We have a new offer for you !',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 231, 86, 14),
                          ),
                        ),
                        subtitle: Text(
                          'local products',
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
                          'New Product has entered our market !',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 231, 86, 14),
                          ),
                        ),
                        subtitle: Text(
                          'Based on customer vote',
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
                          'Big new for you, check it out !',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 231, 86, 14),
                          ),
                        ),
                        subtitle: Text(
                          'Based on your previous purchase',
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
                          'Your lovely product is instock !',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 231, 86, 14),
                          ),
                        ),
                        subtitle: Text(
                          'Grab it now',
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
                          'Wonder for your anniversary !',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 231, 86, 14),
                          ),
                        ),
                        subtitle: Text(
                          'Check it now',
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
                          'Gift for your loved one !',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 231, 86, 14),
                          ),
                        ),
                        subtitle: Text(
                          'Check it now',
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
                          'We had open a new store !',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 231, 86, 14),
                          ),
                        ),
                        subtitle: Text(
                          'Check it now',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 2, 9, 78),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
