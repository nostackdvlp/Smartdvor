import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Услуги',
            style: TextStyle(
                color: Color.fromRGBO(47, 47, 47, 1),
                fontFamily: 'lib/assets/Inter-Bold.ttf',
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                width: 341,
                height: 118,
                child: InkWell(
                    onTap: () {},
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 25),
                        child: Text(
                          'Вызов мастера',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'lib/assets/Inter-Bold.ttf',
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            opacity: 0.5,
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  'lib/assets/plumber-man-fixing-kitchen-sink.png'))),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 341,
              height: 118,
              child: InkWell(
                  onTap: () {},
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, left: 25),
                      child: Text(
                        'Проблемы с лифтом',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'lib/assets/Inter-Bold.ttf',
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            opacity: 0.5,
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'lib/assets/hand-touching-elevator-braille-figure 1.png'))),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 341,
              height: 118,
              child: InkWell(
                  onTap: () {},
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, left: 25),
                      child: Text(
                        'Обращения',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'lib/assets/Inter-Bold.ttf',
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            opacity: 0.5,
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'lib/assets/closeup-of-business-woman-making-notes-in-document.png'))),
                  )),
            ),

          ],
        ),
      ),
    );
  }
}
