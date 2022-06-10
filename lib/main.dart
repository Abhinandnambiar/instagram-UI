import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_design/Screens/login.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    rout(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          height: 130,
          width: 110,
          child: Image.asset(
              "assets/logo-ig-stunning-instagram-logo-vector-download-for-new-7.png"),
        ),
      ),
    );
  }

  Future<void> rout(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.push(
        // ignore: non_constant_identifier_names
        context,
        // ignore: non_constant_identifier_names
        MaterialPageRoute(builder: (Context) => const LoginPage()));
  }
}
