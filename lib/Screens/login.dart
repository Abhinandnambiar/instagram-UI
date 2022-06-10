import 'package:flutter/material.dart';
import 'package:new_design/Screens/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FormKey = GlobalKey<FormState>();
  final usernamecheck = TextEditingController();
  final passwordcheck = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Form(
          key: FormKey,
          child: ListView(
            children: [
              Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Text(
                      "Instgram",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 70, left: 30, right: 30),
                    child: TextFormField(
                      controller: usernamecheck,
                      validator: (value) {
                        if (value!.length == 0) {
                          return "enter your username";
                        }
                      },
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: 'email or username',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: TextFormField(
                      controller: passwordcheck,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter your valid password';
                        }
                      },
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: 'password',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    height: 41,
                    width: 330,
                    color: Colors.blue,
                    child: TextButton(
                      onPressed: () {
                        Check(context);
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 35,
                    width: 330,
                    color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Forget your login detilse?",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text('Get help'))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                      height: 45,
                      width: 330,
                      color: Colors.blue[800],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 25,
                              width: 30,
                              child: Image.asset(
                                  "assets/facebook-logo-icon-vector-29227975.jpg")),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Login to Facebook",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 18,
                  ),
                  const Text(
                    'or',
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    height: 35,
                    width: 250,
                    color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Dont have an account?',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text('Sign up'))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 130,
                  ),
                  Text(
                    'From Meta',
                    style: TextStyle(color: Colors.blue[800]),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> Check(BuildContext context) async {
    final username = usernamecheck.text;
    final password = passwordcheck.text;
    if (username == password) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      FormKey.currentState!.validate();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(seconds: 3),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          content: Text(
            'Username password does not match',
            style: TextStyle(color: Colors.white),
          )));
    }
  }
}
