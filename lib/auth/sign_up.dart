// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'sign_in.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Widget _buildTextEmail() {
    return TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildTextUser() {
    return TextFormField(
      controller: _nameController,
      decoration: InputDecoration(
        hintText: "Username",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  bool _passVis = true;
  bool _passVisConf = true;

  Widget _buildTextPass() {
    return TextFormField(
      controller: _passwordController,
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: const TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
          icon: _passVis
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
          onPressed: () {
            setState(() {
              _passVis = !_passVis;
            });
          },
        ),
      ),
      obscureText: _passVis,
    );
  }

  Widget _buildTextPassConf() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Confirm Password",
        hintStyle: const TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
          icon: _passVisConf
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
          onPressed: () {
            setState(() {
              _passVisConf = !_passVisConf;
            });
          },
        ),
      ),
      obscureText: _passVisConf,
    );
  }

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void register(
    String username,
    String email,
    password,
  ) async {
    // print(email);
    // print(password);

    const storage = FlutterSecureStorage();

    try {
      Map<String, String> headers = {
        "Accept": "application/json",
      };
      asyncFunc() async {
        // Async func to handle Futures easier; or use Future.then
        SharedPreferences prefs = await SharedPreferences.getInstance();
      }

      print(password);
      print(email);

      Response response = await post(
        Uri.parse('http://membership.tarsoft.my/api/v1/register'),
        body: {
          'name': username,
          'email': email,
          'password': password,
          'device_name': 'Android',
        },
        headers: headers,
      );
      print(response.body);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        await storage.write(key: 'token', value: data.token);
        var value = await storage.read(key: 'token');
        print(data);
        print(data['token']); // if use this command will only print token
        print('successfully created');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignInPage(),
          ),
        );
      } else {
        print('status code: ${response.statusCode}');
        print('error');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 30.0, vertical: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Sign Up",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      _buildTextUser(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildTextEmail(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildTextPass(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildTextPassConf(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                // onTap: () {
                //   register(
                //     _emailController.text,
                //     _passwordController.text,
                //   );
                // },
                onTap: () {
                  register(
                      _nameController.text.toString(),
                      _emailController.text.toString(),
                      _passwordController.text.toString());
                },
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Color(0xFFBDC2CB),
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  InkWell(
                    onTap: () {
                      // Link to sign in page
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => SignInPage()));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
