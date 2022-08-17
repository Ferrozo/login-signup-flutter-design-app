import 'dart:async';
import '/screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'introduction_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              elevation: 0,
            ),
            body: const Center(
              child: Image(
                image: AssetImage('src/assets/logo_dot.png'),
                width: 60,
                height: 60,
              ),
            )));
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IntroductionScreen(),
    );
  }
}
