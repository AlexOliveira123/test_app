import 'package:flutter/material.dart';
import 'pages/exercise_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        buttonColor: Colors.green,
        canvasColor: Colors.white
      ),
      home: ExercisePage(),
    );
  }
}
