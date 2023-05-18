import 'package:flutter/material.dart';
import 'dating_login_screen.dart';

class DatingSplash extends StatefulWidget {
  const DatingSplash({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Splash();
  }
}

class _Splash extends State<DatingSplash> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
            () {
          moveToLogin(context);
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Image.asset(
        "assets/images/dating_splash.png",
        fit: BoxFit.fill),
    );
  }
}

moveToLogin(context) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const DatingLoginScreen()), 
          (route) => false
  );
}