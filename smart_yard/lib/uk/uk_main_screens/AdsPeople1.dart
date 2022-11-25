import 'package:flutter/material.dart';

class AdsPeople1 extends StatefulWidget {
  const AdsPeople1({Key? key}) : super(key: key);

  @override
  State<AdsPeople1> createState() => _AdsPeople1State();
}

class _AdsPeople1State extends State<AdsPeople1> {
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
                    Text('Уважаемые соседи!', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text('Приносим искренние извинения за шум и неудобства связанные сремонтом в кв. №46. Постараемся шуметь как можно меньше и закончить всё как можно быстрее. Работать будем с 9-00 до 13-00 часов и с 15-00 до 19-00.Если у вас есть дети и они спят в другое время, сообщите - учтём.Спасибо.Телефон прораба: +7(000)000-00-00, Анатолий.', style: TextStyle(fontSize: 18),),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
