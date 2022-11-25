import 'package:flutter/material.dart';

class RegisterPage1Widget extends StatefulWidget {
  const RegisterPage1Widget({Key? key}) : super(key: key);

  @override
  State<RegisterPage1Widget> createState() => _RegisterPage1WidgetState();
}

class _RegisterPage1WidgetState extends State<RegisterPage1Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,
              color: Color.fromRGBO(47, 47, 47, 1)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Регистрация',
          style: TextStyle(
              color: Color.fromRGBO(47, 47, 47, 1),
              fontFamily: 'lib/assets/Inter-Bold.ttf',
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
