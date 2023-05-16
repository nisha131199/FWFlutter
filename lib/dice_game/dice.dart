import 'dart:math';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<DicePage> {
  int leftdice = 3;
  int rightdice = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dice'),
        backgroundColor: Colors.black26,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                flex: 1, // this is use for ratio between expanded
                child: TextButton(
                  onPressed: () {
                    click();
                  },
                  child: Image.asset('images/dice$leftdice.png', width: 100, height: 100,),
                ))
          ],
        ),
      ),
    );
  }

  click() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
    });
  }

}