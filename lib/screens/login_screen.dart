import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import 'applcationscreen.dart';

class Home_page extends StatefulWidget {
  Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  // Function(String)? whepressed;
  // Function(String)? whenpressedtow;

  String youremail = "moawiah@123.com";
  String Password = "1234";
  TextEditingController myemail = TextEditingController();
  TextEditingController myPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Lottie.network(
                'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Sign in',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                onSubmitted: (val) {
                  myemail.text;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'your email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                onSubmitted: (val) {
                  myPassword.text;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  setState(() {
                    if (youremail == myemail && Password == myPassword) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Application_Screen();
                          },
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Error in password or email"),
                        duration: Duration(seconds: 5),
                      ));
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
