import 'package:flutter/material.dart';

class AdsUk extends StatefulWidget {
  const AdsUk({Key? key}) : super(key: key);

  @override
  State<AdsUk> createState() => _AdsUkState();
}

class _AdsUkState extends State<AdsUk> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                    Text('Уважаемые собственники и наниматели жилых помещений!', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text('ООО "Управляющая компания-14" информирует вас, что 16 января 2020 года состоится плановый вывоз живых новогодних елок.Елки необходимо складировать на площадках для крупногабаритных отходов в срок до 15 января включительно.', style: TextStyle(fontSize: 18),),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
