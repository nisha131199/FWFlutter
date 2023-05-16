import 'package:baba_black_sheep/lwidgets/lDay2/text_fields.dart';
import 'package:baba_black_sheep/dice_game/dice.dart';
import 'lwidgets/lDay1/stateful_screen.dart';
import 'lwidgets/lDay1/stateless_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Ki aa jaane?",
    // home: StatelessScreen(),
    // home: StatefulScreen(),
    // home: DicePage(),
    home: TextFields(),
  ),
);

