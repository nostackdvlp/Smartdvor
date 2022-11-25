import 'package:flutter/material.dart';
import 'package:smart_yard/uk/appeals_widget.dart';
import 'package:smart_yard/uk/uk_main_screens/uk_main_screen.dart';
import 'package:smart_yard/uk/uk_profile_screens/uk_main_profile.dart';
import '../widgets/main_screen/chats.dart';
import '../widgets/main_screen/profile.dart';

class UkMainWidget extends StatefulWidget {
  const UkMainWidget({Key? key}) : super(key: key);

  @override
  State<UkMainWidget> createState() => _UkMainWidgetState();
}

class _UkMainWidgetState extends State<UkMainWidget> {
  int currentTab = 0;
  final List<Widget> screens = [
    MainUkWidget(),
    AppealsWidget(),
    Chats(),
    UkProfile(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = MainUkWidget();
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
                    width: 97.5,
                    child: MaterialButton(
                      minWidth: 5,
                      onPressed: () {
                        setState(() {
                          currentScreen = MainUkWidget();
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
                              AssetImage('lib/assets/Vector.png'),
                              color: currentTab == 0
                                  ? Color(0xFF2F2F2F)
                                  : Color(0xFFCACACA),
                            ),
                          ),
                          SizedBox(
                            height: 22,
                            child: Text(
                              'Главная',
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
                    width: 97.5,
                    child: MaterialButton(
                      minWidth: 30,
                      onPressed: () {
                        setState(() {
                          currentScreen = AppealsWidget();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Icon(Icons.mail,
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
                              'Обращения',
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
                    width: 97.5,
                    child: MaterialButton(
                      minWidth: 30,
                      onPressed: () {
                        setState(() {
                          currentScreen = Chats();
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
                              AssetImage('lib/assets/Chats_image.png'),
                              color: currentTab == 2
                                  ? Color(0xFF2F2F2F)
                                  : Color(0xFFCACACA),
                            ),
                          ),
                          SizedBox(
                            height: 22,
                            child: Text(
                              'Чаты',
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
                    width: 97.5,
                    child: MaterialButton(
                      minWidth: 30,
                      onPressed: () {
                        setState(() {
                          currentScreen = UkProfile();
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
                              AssetImage('lib/assets/Profile_image.png'),
                              color: currentTab == 3
                                  ? Color(0xFF2F2F2F)
                                  : Color(0xFFCACACA),
                            ),
                          ),
                          SizedBox(
                            height: 22,
                            child: Text(
                              'Профиль',
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
