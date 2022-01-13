import 'package:flutter/material.dart';
import 'package:flutter_navigation_demo/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void navigateNextScreen() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Screen2()));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
          child: const Text('Go Forwards To Screen 2'),
          onPressed: navigateNextScreen,
        ),
      ),
    );
  }
}
