import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'tabs/home_tabs.dart';
import 'tabs/notifications_tab.dart';
import 'tabs/profile_tab.dart';
import 'tabs/settings_tab.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    NotificationsTab(),
    ProfileTab(),
    SettingsTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              iconSize: 24,
              elevation: 0,
              //showSelectedLabels: true,
              //showUnselectedLabels: true,
              // selectedLabelStyle: GoogleFonts.poppins(
              //     fontSize: 12, fontWeight: FontWeight.w500),
              // selectedItemColor: Color(0xff04ECA6),
              // unselectedLabelStyle: GoogleFonts.poppins(
              //     fontSize: 12, fontWeight: FontWeight.w500),
              unselectedItemColor: Color(0xffABAFD1),
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: _selectedIndex == 0
                      ? SvgPicture.asset(
                          "assets/icons/home_fill.svg",
                          colorFilter: ColorFilter.mode(
                            Color(0xff13459E),
                            BlendMode.srcIn,
                          ),
                        )
                      : SvgPicture.asset(
                          "assets/icons/home.svg",
                          colorFilter: ColorFilter.mode(
                            Color(0xff13459E),
                            BlendMode.srcIn,
                          ),
                        ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: _selectedIndex == 1
                      ? SvgPicture.asset(
                          "assets/icons/bell_fill.svg",
                          colorFilter: ColorFilter.mode(
                            Color(0xff13459E),
                            BlendMode.srcIn,
                          ),
                        )
                      : SvgPicture.asset(
                          "assets/icons/bell.svg",
                          colorFilter: ColorFilter.mode(
                            Color(0xff13459E),
                            BlendMode.srcIn,
                          ),
                        ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: _selectedIndex == 2
                      ? SvgPicture.asset(
                          "assets/icons/user_cir_fill.svg",
                          colorFilter: ColorFilter.mode(
                            Color(0xff13459E),
                            BlendMode.srcIn,
                          ),
                        )
                      : SvgPicture.asset(
                          "assets/icons/user_cir.svg",
                          colorFilter: ColorFilter.mode(
                            Color(0xff13459E),
                            BlendMode.srcIn,
                          ),
                        ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: _selectedIndex == 3
                      ? SvgPicture.asset(
                          "assets/icons/gear_fill.svg",
                          colorFilter: ColorFilter.mode(
                            Color(0xff13459E),
                            BlendMode.srcIn,
                          ),
                        )
                      : SvgPicture.asset(
                          "assets/icons/gear.svg",
                          colorFilter: ColorFilter.mode(
                            Color(0xff13459E),
                            BlendMode.srcIn,
                          ),
                        ),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
