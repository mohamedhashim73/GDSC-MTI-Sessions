import 'package:flutter/material.dart';
import 'layout/main_screen.dart';

void main()
{
  runApp(MyApp());    // Todo: This method responsible for running The Application
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Todo: MaterialApp responsible for specify root screen using home property : MainScreen()
    return MaterialApp(
      debugShowCheckedModeBanner: false,   // Todo: to remove the Icon for debugging which appear on appBar
      home : MainScreen()
    );
  }
}
