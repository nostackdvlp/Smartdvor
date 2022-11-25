import 'package:flutter/material.dart';

class AdsUk1 extends StatefulWidget {
  const AdsUk1({Key? key}) : super(key: key);

  @override
  State<AdsUk1> createState() => _AdsUk1State();
}

class _AdsUk1State extends State<AdsUk1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(225, 225, 225, 1)),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text('Уважаемые собственники и наниматели жилых помещений!', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('ООО "Управляющая компания-14" информирует вас, что 16 января 2020 года состоится плановый вывоз живых новогодних елок.Елки необходимо складировать на площадках для крупногабаритных отходов в срок до 15 января включительно.', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Color.fromRGBO(239, 239, 239, 1),
          child: Icon(
            Icons.create,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
