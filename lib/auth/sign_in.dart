// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:membership_system_1/auth/forgot_password.dart';
import 'package:membership_system_1/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'sign_up.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Widget _buildTextEmail() {
    return TextFormField(
      controller: _emailController,
      decoration: const InputDecoration(
        hintText: "Email or Username",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  bool _passVis = true;

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

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void login(
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
      // Response response = await post(
      //   Uri.parse('http://membership.tarsoft.my/api/v1/login'),
      //   body: {
      //     'email': email,
      //     'password': password,
      //     'device_name': 'Android',
      //   },
      //   headers: headers,
      // );

      if (_passwordController.text.isNotEmpty &&
          _emailController.text.isNotEmpty) {
        var response = await http.post(
          Uri.parse('http://membership.tarsoft.my/api/v1/login'),
          body: {
            'email': email,
            'password': password,
            'device_name': 'Android',
          },
          headers: headers,
        );
        if (response.statusCode == 200) {
          var data = jsonDecode(response.headers["token"].toString());
          final body = json.decode(response.body);
          print(data);

          print("Login Token" +
              body["token"]
                  .toString()); // if use this command will only print token
          // print('Login Successfull');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "Login Successfull",
              ),
            ),
          );
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text(
          //       "Token : " + body["token"].toString(),
          //     ),
          //   ),
          // );

          // HERE we store value or token inside shared preference
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString("login_token", body["token"].toString());

          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
              (route) => false);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => HomeScreen(),
          //   ),
          // );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Invalid email or password',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          );
        }
      } else {
        // print('status code: ${response.statusCode}');
        // print('error');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Blank value found',
            ),
          ),
        );
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void checkLogin() async {
    // to check if user is already logged in or not
    final storage = FlutterSecureStorage();
    final token = await storage.read(key: "login_token");
    if (token != null && token.isNotEmpty) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
          (route) => false);
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => HomeScreen(),
      //   ),
      // );
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
                "Sign In",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 90.0,
              ),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      _buildTextEmail(),
                      const SizedBox(
                        height: 20.0,
                      ),
                      _buildTextPass(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassword()));
                    },
                    child: const Text(
                      "Forgot Password ?",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: () {
                  login(
                    _emailController.text,
                    _passwordController.text,
                  );
                },
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => HomeScreen()));
                // },
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                    color: Colors.blue,
                  ),
                  child: const Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Color(0xFFBDC2CB),
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  InkWell(
                    onTap: () {
                      // Link to SignUp Page
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SignUpPage()));
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                          fontSize: 17.0),
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
// _getAndSaveToken() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   String token = await _getTokenFromHttp();
//   await prefs.setInt('jwt', token);
// }

// Future<String> _getTokenFromHttp() async {
//   // http code here
// }