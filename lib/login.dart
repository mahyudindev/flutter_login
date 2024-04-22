import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
                  'assets/unival.png', // Ganti dengan path gambar logo Anda
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login'),
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
    );
  }
}
