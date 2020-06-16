import 'package:flutter/material.dart';
import 'package:flutter_login_ui/telas/telas_ambos/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hospital Sauer',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}