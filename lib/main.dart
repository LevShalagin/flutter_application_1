import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 83, 232, 139), 
      Color.fromARGB(255, 21, 190, 119)
    ],
    ).createShader(
      Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
    );

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Image(image: AssetImage("assets/png/Logo.png"),),
              
              Text("FoodNinja", style: 
                TextStyle(
                  fontFamily: 'Viga',
                  fontSize: 40,
                  foreground: Paint()..shader = linearGradient,
                  ),
                ),

              Text("Deliever Favorite Food", style: 
                TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 9, 5, 28),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
