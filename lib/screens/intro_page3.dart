import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          const Text(
            'App is ready to Work with you!',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Are you ready to do new Research something in your life! \n It is time to Start Press the buttome Done!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
          ),
          // const SizedBox(
          //   height: 50,
          // ),
          Center(
            child: Lottie.asset('assets/lotties/animacao.json'),
          ),
        ],
      ),
      color: Colors.greenAccent[100],
    );
  }
}
