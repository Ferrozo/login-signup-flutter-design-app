import 'dart:async';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Timer(
          const Duration(seconds: 5),
          () => {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                  // builder: (context) => const MyHomePage(title: 'Home Page'),
                )
              });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: SpinKitThreeBounce(color: Colors.green, size: 25)),
      ),
    );
  }
}
