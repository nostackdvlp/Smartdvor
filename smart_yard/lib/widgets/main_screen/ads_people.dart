import 'package:flutter/material.dart';

import '../scroll_to_hide_widget.dart';

class AdsPeople extends StatefulWidget {
  const AdsPeople({Key? key}) : super(key: key);

  @override
  State<AdsPeople> createState() => _AdsPeopleState();
}

class _AdsPeopleState extends State<AdsPeople> {
  late ScrollController controller;

  @override
  void initState() {
    super.initState();

    controller = ScrollController();
  }

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
                      Text('Уважаемые соседи!', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Приносим искренние извинения за шум и неудобства связанные сремонтом в кв. №46. Постараемся шуметь как можно меньше и закончить всё как можно быстрее. Работать будем с 9-00 до 13-00 часов и с 15-00 до 19-00.Если у вас есть дети и они спят в другое время, сообщите - учтём.Спасибо.Телефон прораба: +7(000)000-00-00, Анатолий.', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
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
