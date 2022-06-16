import 'package:flutter/material.dart';

import 'about_us.dart';
import 'auth/sign_in.dart';
import 'feedback.dart';
import 'home_screen.dart';
import 'profile/profile.dart';

class LeftSideBarDrawer extends StatelessWidget {
  const LeftSideBarDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text(
                'HOME',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              }
              //   Navigator.pop(context,);
              // },
              ),
          ListTile(
              leading: const Icon(Icons.person_pin),
              title: const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              }
              // onTap: () {
              //   // Update the state of the app
              //   // ...
              //   // Then close the drawer
              //   Navigator.pop(context);
              // },
              ),
          ListTile(
              leading: const Icon(Icons.feedback_rounded),
              title: const Text(
                'Feedback',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FeedbackInfo(),
                  ),
                );
              }
              // onTap: () {
              //   // Update the state of the app
              //   // ...
              //   // Then close the drawer
              //   Navigator.pop(context);
              // },
              ),
          ListTile(
              leading: const Icon(Icons.info_rounded),
              title: const Text(
                'About us',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => About(),
                  ),
                );
              }
              // onTap: () {
              //   // Update the state of the app
              //   // ...
              //   // Then close the drawer
              //   Navigator.pop(context);
              // },
              ),
          ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ),
                );
              }
              // onTap: () {
              //   // Update the state of the app
              //   // ...
              //   // Then close the drawer
              //   Navigator.pop(context);
              // },
              ),
        ],
      ),
    );
  }
}
