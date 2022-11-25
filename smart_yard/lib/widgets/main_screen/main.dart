import 'package:flutter/material.dart';
import 'package:smart_yard/widgets/main_screen/ads_people.dart';
import 'package:smart_yard/widgets/main_screen/ads_uk.dart';
import 'package:smart_yard/widgets/main_screen/cameras.dart';
import 'package:smart_yard/widgets/main_screen/lost.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  // define your tab controller here
  late TabController _tabController;

  @override
  void initState() {
    // initialise your tab controller here
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
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
            padding: EdgeInsets.only(left: 15),
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
              Container(
                alignment: Alignment.center,
                height: 42,
                width: 149,
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(47, 47, 47, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Text('Потерянные вещи'),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                AdsUk(),
                AdsPeople(),
                Cameras(),
                Lost(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
