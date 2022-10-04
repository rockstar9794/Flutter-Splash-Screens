import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(50.0)),
          // const SizedBox(
          //   height: 50,
          // ),
          const Text(
            'Welcome to our App',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          // const SizedBox(
          //   height: 15,
          // ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Text(
              'Bu yerda sizning applicationizi descriptioni turishi mumkun \n siz hohlagan usulda!',
              style: TextStyle(color: Colors.black45),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Lottie.asset('assets/lotties/support.json'),
          ),
        ],
      ),
    );
  }
}
