import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 204, 214, 221),
        title: const Text(
          'Home Page',
          style: TextStyle(
              color: Color.fromARGB(255, 17, 16, 16),
              fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 156, 211, 235),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Selamat Datang!',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 44),
            ),
            const SizedBox(height: 20),
            Lottie.asset(
              'assets/animation.json',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
