import 'dart:convert';
import 'dart:developer';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:text_gradiate/text_gradiate.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Column(
                children: <Widget>[
                  Image(image: AssetImage("assets/png/Logo.png"),),
                  
                  TextGradiate(
                    text: Text("FoodNinja", style: 
                      TextStyle(
                        fontFamily: 'Viga',
                        fontSize: 40,
                        ),
                      ),
                    colors: <Color>[
                      Color.fromARGB(255, 83, 232, 139), 
                      Color.fromARGB(255, 21, 190, 119)
                    ],
                  ),
                  
                  Text("Deliever Favorite Food", 
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 9, 5, 28),
                    ),
                  ),
                ],
              ),
              
              Padding(
                padding: EdgeInsets.all(60.0),
                child: Text("Login To Your Account",
                  style: TextStyle(
                    fontFamily: 'BentonSans',
                    fontSize: 20,
                  ),
                ),
              ),
              
              Padding(
                padding: EdgeInsets.all(6.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(6.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Or Continue With"),
              ),

              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton.icon(
                    onPressed: null, 
                    icon: Image(
                      image: AssetImage("assets/png/facebook-icon.png"),
                    ),
                    label: Text('data'),
                  ),
                  
                  IconButton(
                    onPressed: null, 
                    icon: Image(
                      image: AssetImage("assets/png/google-icon.png"),
                    ),
                  ),
                
                ],
              ),

            ],
          ),
        )
      ),
    );
  }
}
