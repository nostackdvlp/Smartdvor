import 'package:flutter/material.dart';
import 'package:smart_yard/uk/uk_main.dart';
import 'package:smart_yard/widgets/auth/auth_login_widget.dart';
import 'package:smart_yard/widgets/auth/welcomePage.dart';
import 'package:smart_yard/widgets/main_screen/main_screen_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'f',
      home: WelcomePage(),
        );
  }
}