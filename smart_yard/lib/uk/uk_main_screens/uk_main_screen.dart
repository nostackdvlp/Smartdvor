import 'package:flutter/material.dart';
import 'package:smart_yard/uk/uk_main_screens/AdsPeople1.dart';
import 'package:smart_yard/uk/uk_main_screens/AdsUk1.dart';

import '../../widgets/main_screen/cameras.dart';

class MainUkWidget extends StatefulWidget {
  const MainUkWidget({Key? key}) : super(key: key);

  @override
  State<MainUkWidget> createState() => _MainUkWidgetState();
}

class _MainUkWidgetState extends State<MainUkWidget>
  with SingleTickerProviderStateMixin {
  // define your tab controller here
  late TabController _tabController;

  @override
  void initState() {
  // initialise your tab controller here
  _tabController = TabController(length: 3, vsync: this);
  super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Главная',
            style: TextStyle(color: Color.fromRGBO(47, 47, 47, 1)),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          TabBar(
            padding: EdgeInsets.only(left: 22),
            indicator: BoxDecoration(
                color: Color.fromRGBO(47, 47, 47, 1), borderRadius: BorderRadius.circular(15)),
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: EdgeInsets.only(right: 5.5, left: 5.5),
            labelColor: Colors.white,
            isScrollable: true,
            unselectedLabelColor: Color.fromRGBO(47, 47, 47, 1),
            unselectedLabelStyle: TextStyle(
              fontSize: 14,
              color: Color.fromRGBO(47, 47, 47, 1),
              fontWeight: FontWeight.w500,
            ),
            labelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            tabs: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 42,
                width: 172,
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(47, 47, 47, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Text('Объявления УК и ТСЖ'),
              ),
              Container(
                alignment: Alignment.center,
                height: 42,
                width: 174,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(47, 47, 47, 1),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Text('Объявления жильцов'),
              ),
              Container(
                alignment: Alignment.center,
                height: 42,
                width: 79,
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(47, 47, 47, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Text('Камеры'),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                AdsUk1(),
                AdsPeople1(),
                Cameras(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
