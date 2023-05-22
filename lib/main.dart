import 'lwidgets/lDay2/text_fields.dart';
import 'dice_game/dice.dart';
import 'lwidgets/lDay1/stateful_screen.dart';
import 'lwidgets/lDay1/stateless_screen.dart';
import 'package:flutter/material.dart';
import 'lwidgets/lDay3/rownd_splash.dart';
import 'lwidgets/lDay4_dating/dating_splash_screen.dart';
import 'lwidgets/lDay6_lApi/learning_api.dart';

void main() => runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Ki aa jaane?",
    // home: StatelessScreen(),
    // home: StatefulScreen(),
    // home: DicePage(),
    // home: TextFields(),
    // home: RowndSplash(),
    // home: DatingSplash(),
    home: LApi(),
  ),
);

