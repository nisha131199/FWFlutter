import 'package:flutter/material.dart';

class StatefulScreen extends StatefulWidget {
  const StatefulScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SimpleStateful();
  }
}

class _SimpleStateful extends State<StatefulScreen> {
  var text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FWFlutter"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (var str) {
                setState(() {
                  text = str;
                });
              },
            ),
            Text("text is \"${text.trim()}\"")
          ],
        ),
      ),
    );
  }
}