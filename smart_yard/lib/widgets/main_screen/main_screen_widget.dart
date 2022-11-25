import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smart_yard/widgets/main_screen/services.dart';
import 'package:flutter/services.dart';
import 'bill.dart';
import 'chats.dart';
import 'main.dart';
import 'profile.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int currentTab = 2;
  final List<Widget> screens = [
    Services(),
    Bill(),
    MyTabBar(),
    Chats(),
    Profile(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = MyTabBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        child: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 78.6,
                    child: MaterialButton(
                      minWidth: 5,
                      onPressed: () {
                        setState(() {
                          currentScreen = Services();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: ImageIcon(
                              AssetImage('lib/assets/Service_image.png'),
                              color: currentTab == 0
                                  ? Color(0xFF2F2F2F)
                                  : Color(0xFFCACACA),
                            ),
                          ),
                          SizedBox(
                            height: 22,
                            child: Text(
                              'Услуги',
                              style: TextStyle(
                                  color: currentTab == 0
                                      ? Color(0xFF2F2F2F)
                                      : Color(0xFFCACACA),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'lib/assets/Inter-SemiBold.ttf'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 78.6,
                    child: MaterialButton(
                      minWidth: 30,
                      onPressed: () {
                        setState(() {
                          currentScreen = Bill();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: ImageIcon(
                              AssetImage('lib/assets/Bill_image.png'),
                              color: currentTab == 1
                                  ? Color(0xFF2F2F2F)
                                  : Color(
                                      0xFFCACACA,
                                    ),
                            ),
                          ),
                          SizedBox(
                            height: 22,
                            child: Text(
                              'Счета',
                              style: TextStyle(
                                  color: currentTab == 1
                                      ? Color(0xFF2F2F2F)
                                      : Color(0xFFCACACA),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'lib/assets/Inter-SemiBold.ttf'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 78.6,
                    child: MaterialButton(
                      minWidth: 30,
                      onPressed: () {
                        setState(() {
                          currentScreen = MyTabBar();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: ImageIcon(
                              AssetImage('lib/assets/Vector.png'),
                              color: currentTab == 2
                                  ? Color(0xFF2F2F2F)
                                  : Color(0xFFCACACA),
                            ),
                          ),
                          SizedBox(
                            height: 22,
                            child: Text(
                              'Главная',
                              style: TextStyle(
                                  color: currentTab == 2
                                      ? Color(0xFF2F2F2F)
                                      : Color(0xFFCACACA),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'lib/assets/Inter-SemiBold.ttf'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 78.6,
                    child: MaterialButton(
                      minWidth: 30,
                      onPressed: () {
                        setState(() {
                          currentScreen = Chats();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: ImageIcon(
                              AssetImage('lib/assets/Chats_image.png'),
                              color: currentTab == 3
                                  ? Color(0xFF2F2F2F)
                                  : Color(0xFFCACACA),
                            ),
                          ),
                          SizedBox(
                            height: 22,
                            child: Text(
                              'Чаты',
                              style: TextStyle(
                                  color: currentTab == 3
                                      ? Color(0xFF2F2F2F)
                                      : Color(0xFFCACACA),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'lib/assets/Inter-SemiBold.ttf'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 78.3,
                    child: MaterialButton(
                      minWidth: 30,
                      onPressed: () {
                        setState(() {
                          currentScreen = Profile();
                          currentTab = 4;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: ImageIcon(
                              AssetImage('lib/assets/Profile_image.png'),
                              color: currentTab == 4
                                  ? Color(0xFF2F2F2F)
                                  : Color(0xFFCACACA),
                            ),
                          ),
                          SizedBox(
                            height: 22,
                            child: Text(
                              'Профиль',
                              style: TextStyle(
                                  color: currentTab == 4
                                      ? Color(0xFF2F2F2F)
                                      : Color(0xFFCACACA),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'lib/assets/Inter-SemiBold.ttf'),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


