import 'package:flutter/material.dart';
import 'package:messenger_screen/screens/messenger_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MessengerScreen(),
    );
  }
}
