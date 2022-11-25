import 'package:flutter/material.dart';

class Cameras extends StatefulWidget {
  const Cameras({Key? key}) : super(key: key);

  @override
  State<Cameras> createState() => _CamerasState();
}

class _CamerasState extends State<Cameras> {
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
    return Padding(
      padding: const EdgeInsets.only(top: 45),
      child: Column(
        children: [
          SizedBox(
            height: 74,
            width: 334,
            child: ElevatedButton(
                style: style,
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                        style: TextStyle(color: Color.fromRGBO(47, 47, 47, 1)),
                        'Подъезд'),
                    Padding(
                      padding: const EdgeInsets.only(left: 185),
                      child: Icon(Icons.arrow_forward_ios, color: Color.fromRGBO(47, 47, 47, 1),),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 74,
            width: 334,
            child: ElevatedButton(
                style: style,
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                        style: TextStyle(color: Color.fromRGBO(47, 47, 47, 1)),
                        'Двор'),
                    Padding(
                      padding: const EdgeInsets.only(left: 221),
                      child: Icon(Icons.arrow_forward_ios, color: Color.fromRGBO(47, 47, 47, 1),),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 74,
            width: 334,
            child: ElevatedButton(
                style: style,
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                        style: TextStyle(color: Color.fromRGBO(47, 47, 47, 1)),
                        'Детская площадка'),
                    Padding(
                      padding: const EdgeInsets.only(left: 89),
                      child: Icon(Icons.arrow_forward_ios, color: Color.fromRGBO(47, 47, 47, 1),),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
