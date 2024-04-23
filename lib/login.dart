import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username = '';
  String _password = '';
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 25, 25, 26),
        title: const Text('Login Page', style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icon/icon.png',
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 10),
                Container(
                  width: 300,
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Username',
                    ),
                    onChanged: (value) {
                      _username = value;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 300,
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                    obscureText: true,
                    onChanged: (value) {
                      _password = value;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        _isLoading = true;
                      });

                      await Future.delayed(const Duration(seconds: 2));

                      setState(() {
                        _isLoading = false;
                      });

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _isLoading
          ? SizedBox(
              height: 100,
              child: Center(
                child: Lottie.asset(
                  'assets/animation/login.json',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            )
          : null,
    );
  }
}
