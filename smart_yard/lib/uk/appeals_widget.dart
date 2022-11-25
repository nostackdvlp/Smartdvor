import 'package:flutter/material.dart';

class AppealsWidget extends StatefulWidget {
  const AppealsWidget({Key? key}) : super(key: key);

  @override
  State<AppealsWidget> createState() => _AppealsWidgetState();
}

class _AppealsWidgetState extends State<AppealsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Обращения',
            style: TextStyle(
                color: Color.fromRGBO(47, 47, 47, 1),
                fontFamily: 'lib/assets/Inter-Bold.ttf',
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 28, right: 28, top: 31),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 334,
              height: 74,
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
                      Text('Мастера',
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
              height: 20,
            ),
            SizedBox(
              width: 334,
              height: 74,
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
                      Text('Заявки',
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
              height: 20,
            ),
            SizedBox(
              width: 334,
              height: 74,
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
                      Text('Заявки на платные услуги',
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
              height: 20,
            ),
            SizedBox(
              width: 334,
              height: 74,
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
                      Text('Предложения',
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
              height: 40,
            ),
            SizedBox(
              width: 334,
              height: 74,
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
                      Text('Аварийные',
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
      )
    );
  }
}
