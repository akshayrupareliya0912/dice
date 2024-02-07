import 'package:flutter/material.dart';

import 'gradent_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice"),
        ),
        body: GradientContainer.purple(),
      ),
    ),
  );
}


