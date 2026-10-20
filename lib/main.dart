import "package:flutter/material.dart";
import "package:f4_5/gradient_container.dart";
import "package:f4_5/styled_text.dart";
import "package:f4_5/dice_roller.dart";
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (Scaffold(
        body: GradientContainer(Colors.white,Colors.blue,Colors.red),
      
      )),
    ),
  );
}