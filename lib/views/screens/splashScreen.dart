import 'dart:async';

import 'package:chitra_app/views/screens/homeScreen.dart';
import 'package:flutter/material.dart';

import 'category.dart';
class SplashScreen extends StatefulWidget {
  static final routeName = '/splashScreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),()=>Navigator.popAndPushNamed(context, HomeScreen.routeName));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(height: MediaQuery.of(context).size.height,
        child: Image.asset(fit:BoxFit.fill,'assets/images/cat.jpg')),);
  }
}
