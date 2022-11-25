import 'package:flutter/material.dart';

class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 27),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'lib/assets/Inter-Bold.ttf'),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 78, left: 46),
          child: Text(
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, fontFamily: 'lib/assets/Inter-Bold.ttf'),
              'Счета'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 334,
                height: 74,
                child: ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: Text(
                        style: TextStyle(color: Color.fromRGBO(47, 47, 47, 1)),
                        'Квитанции ЖКХ')),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 334,
                height: 74,
                child: ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: Text(
                        style: TextStyle(color: Color.fromRGBO(47, 47, 47, 1)),
                        'Квитанции на оплату')),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 334,
                height: 74,
                child: ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: Text(
                        style: TextStyle(color: Color.fromRGBO(47, 47, 47, 1)),
                        'Сбор денег')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
