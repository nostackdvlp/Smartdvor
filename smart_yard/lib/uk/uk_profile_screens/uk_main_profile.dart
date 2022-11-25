import 'package:flutter/material.dart';

class UkProfile extends StatelessWidget {
  const UkProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Профиль',
            style: TextStyle(
                color: Color.fromRGBO(47, 47, 47, 1),
                fontFamily: 'lib/assets/Inter-Bold.ttf',
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 28, right: 28, top: 31),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 334,
              height: 200,
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {},
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 22,
                        ),
                        Container(
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Color.fromRGBO(47, 47, 47, 1),
                            ),
                            width: 88,
                            height: 88,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(46, 46, 46, 1),
                                width: 2,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(88, 88)),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Иван Иванов',
                          style: TextStyle(
                              color: Color.fromRGBO(47, 47, 47, 1),
                              fontFamily: 'lib/assets/Inter-Bold.ttf',
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                        Text('Руководитель юридического отдела',
                            style: TextStyle(
                                color: Color.fromRGBO(47, 47, 47, 1),
                                fontFamily: 'lib/assets/Inter-Bold.ttf',
                                fontSize: 16,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
        SizedBox(
          width: 334,
          height: 54,
          child: Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 27,
                  ),
                  Text('Конфиденциальность',
                      style: TextStyle(
                          color: Color.fromRGBO(47, 47, 47, 1),
                          fontFamily: 'lib/assets/Inter-Bold.ttf',
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ),
        ),
            SizedBox(
              height: 10,
            ),
        SizedBox(
          width: 334,
          height: 54,
          child: Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 27,
                  ),
                  Text('Настройки',
                      style: TextStyle(
                          color: Color.fromRGBO(47, 47, 47, 1),
                          fontFamily: 'lib/assets/Inter-Bold.ttf',
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ),
        ),
            SizedBox(
              height: 10,
            ),
        SizedBox(
          width: 334,
          height: 54,
          child: Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 27,
                  ),
                  Text('Об организации',
                      style: TextStyle(
                          color: Color.fromRGBO(47, 47, 47, 1),
                          fontFamily: 'lib/assets/Inter-Bold.ttf',
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ),
        ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 334,
              height: 54,
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 27,
                      ),
                      Text('О приложении',
                          style: TextStyle(
                              color: Color.fromRGBO(47, 47, 47, 1),
                              fontFamily: 'lib/assets/Inter-Bold.ttf',
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 334,
              height: 54,
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 27,
                      ),
                      Text('Выйти из аккаунта',
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontFamily: 'lib/assets/Inter-Bold.ttf',
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
