import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/unival.png',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      _isLoading = true;
                    });

                    await Future.delayed(const Duration(seconds: 2));

                    setState(() {
                      _isLoading = false;
                    });

                    Navigator.push(
                      // ignore: use_build_context_synchronously
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Daftar'),
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
                  'assets/login.json',
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

