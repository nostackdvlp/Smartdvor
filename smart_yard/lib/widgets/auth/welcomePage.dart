import 'package:flutter/material.dart';
import 'package:smart_yard/widgets/auth/auth_login_widget.dart';
import 'package:smart_yard/widgets/auth/auth_register_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 75, top: 84),
              child: Text(
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 16,
                    fontFamily: 'lib/assets/Inter-Bold.ttf',
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(47, 47, 47, 1),
                  ),
                  'Для начала работы с приложением\n необходимо зарегестрироваться\n или войти в аккаунт'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 208),
              child: SizedBox(
                  height: 60,
                  width: 314,
                  child: TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(47, 47, 47, 1)),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AuthWidget()));
                      },
                      child: Text(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'lib/assets/Inter-Bold.ttf'),
                          'Вход'))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                  height: 60,
                  width: 314,
                  child: TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(47, 47, 47, 1)),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage1Widget()));
                      },
                      child: Text(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'lib/assets/Inter-Bold.ttf'),
                          'Регистрация'))),
            ),
          ],
        ));
  }
}
