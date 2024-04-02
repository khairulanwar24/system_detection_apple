import 'dart:async';

import 'package:flutter/material.dart';

class MySplash extends StatefulWidget {
  const MySplash({Key? key}) : super(key: key);

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/explore'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[600],
      body: Center(
        child: Container(
          width: 230,
          height: 320,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/images/splash.jpeg'))),
        ),
      ),
    );
  }
}
