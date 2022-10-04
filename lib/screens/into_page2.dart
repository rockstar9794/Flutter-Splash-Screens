import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  bool subscribe = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Lottie.asset('assets/lotties/mobile-apps-features.json'),
          ),
          const Text(
            'Introducing Functions of App',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Bu yerda esa Mobile App ning funksiyalari va menyulari togrisidegi informatsiyani yozsangiz boladi',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (subscribe == false) {
                subscribe = true;
                _controller.forward();
              } else {
                subscribe = false;
                _controller.reverse();
              }
            },
            child: Lottie.asset(
              'assets/lotties/subscribe-white-background.json',
              controller: _controller,
            ),
          ),
        ],
      ),
    );
  }
}
