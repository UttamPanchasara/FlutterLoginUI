import 'package:flutter/material.dart';
import 'package:flutter_login_ui/SignInScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SignInScreen(),
    );
  }
}
