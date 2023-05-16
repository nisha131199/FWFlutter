import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  const TextFields({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TextFields();
  }
}

class _TextFields extends State<TextFields> {
  var name = "", email = "", fname = "", about = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("FWFlutter"),
        ),
      body: Container (
        margin: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                    "Introduction",
                    textStyle: const TextStyle(fontSize: 18, color: Colors.blue, letterSpacing: 10,fontWeight: FontWeight.bold),
                    speed: const Duration(milliseconds: 200)
                )
              ],
              repeatForever: true,
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            TextField(
              keyboardType: TextInputType.name,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(1)),
                  borderSide: BorderSide(
                    color: Colors.black
                  )
                ),
                hintText: "Enter your name.",
                hintStyle: TextStyle(
                    color: Colors.black38
                ),
              ),
              onChanged: (var str) {
                setState(() {
                  name = str;
                });
              },
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.blue),
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(1)),
                  borderSide: BorderSide(
                    color: Colors.black
                  )
                ),
                hintText: "Enter your email.",
                hintStyle: TextStyle(
                    color: Colors.black38
                ),
              ),
              onChanged: (var str) {
                setState(() {
                  email = str;
                });
              },
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(1)),
                  borderSide: BorderSide(
                    color: Colors.black
                  )
                ),
                hintText: "Enter your friend's name.",
                hintStyle: TextStyle(
                    color: Colors.black38
                ),
              ),
              onChanged: (var str) {
                setState(() {
                  fname = str;
                });
              },
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    about = "My name is ${name.trim()}.\nI am ${fname.trim()}'s friend.\nMy email id is ${email.trim()}";
                  });
                },
                child: const Text("Submit", style: TextStyle(color: Colors.redAccent),)
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Text(about),
            const Padding(padding: EdgeInsets.only(top: 10)),
          ],
        ),
      ),
    );
  }
}