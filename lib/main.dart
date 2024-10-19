import 'package:flutter/material.dart';

import 'Home_Screen.dart';
import 'Screen_Information.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: {
        "/screenInformation": (context) =>const ScreenInformation(),
      },
    );
  }
}
