import 'package:flutter/material.dart';
import 'package:smart_yard/widgets/auth/welcomePage.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color.fromRGBO(47, 47, 47, 1),
              ),
            ),
          ),
          title: Text(
            'Вход',
            style: TextStyle(
                color: Color.fromRGBO(47, 47, 47, 1),
                fontFamily: 'lib/assets/Inter-Bold.ttf',
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(46.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text('Логин'),
            ),
            SizedBox(
              height: 9,
            ),
            TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(202, 202, 202, 1)),
                        borderRadius: BorderRadius.circular(15)))),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text('Пароль'),
            ),
            SizedBox(
              height: 9,
            ),
            TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(202, 202, 202, 1)),
                        borderRadius: BorderRadius.circular(15)))),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only( left: 5),
              child: Text('Код компании'),
            ),
            SizedBox(
              height: 9,
            ),
            TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(202, 202, 202, 1)),
                        borderRadius: BorderRadius.circular(15)))),
          ],
        ),
      ),
    );
  }
}
