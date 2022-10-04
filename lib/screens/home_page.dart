import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Welcome Home',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
