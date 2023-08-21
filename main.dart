import 'package:flut/login1.dart';
import 'package:flut/screen1.dart';
import 'package:flut/screen2.dart';
import 'package:flut/screen3.dart';
import 'package:flut/screen4.dart';
import 'package:flut/screen5.dart';
import 'package:flut/screen6.dart';
import 'package:flut/team_folder.dart';
import 'package:flut/textbutton.dart';
import 'package:flut/textdemo.dart';
import 'package:flut/welcome_screen.dart';
import 'package:flut/whatsapp.dart';
import 'package:flutter/material.dart';
import 'animation.dart';
import 'decoration1demo.dart';
import 'decoration2demo.dart';
import 'decorationdemo.dart';
import 'dividescreen9differentpart.dart';
import 'dividescreen9qualpart.dart';
import 'food.dart';
import 'home_screen.dart';
import 'image1.dart';
import 'login.dart';
import 'new.dart';
import 'feedback.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:FoodOrderingPage(),
    );
  }
}

