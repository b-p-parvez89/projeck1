import 'dart:async';

import 'package:flutter/material.dart';

import '../page/bottomNavigationBar.dart';

class SplashScreenn extends StatefulWidget {
  const SplashScreenn({super.key});

  @override
  State<SplashScreenn> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenn> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => BottomBar())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 225, 183, 119),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Assignmen 11".toUpperCase(),
                  style: const TextStyle(
                      fontSize: 32,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CircularProgressIndicator(
                color: Colors.purple,
                strokeWidth: 4,
              )
            ],
          ),
        ));
  }
}
