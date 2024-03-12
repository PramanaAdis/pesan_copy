import 'package:flutter/material.dart';
import 'package:pesan_copi/screen/home/home_page.dart';
import 'package:pesan_copi/screen/keranjang/keranjang.dart';
import 'package:pesan_copi/screen/like/like.dart';
import 'package:pesan_copi/screen/notification/notification.dart';
import 'package:pesan_copi/theme.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  final _screens = [HomePage(), Like(), Keranjang(), NotiFication()];
  @override
  Widget build(BuildContext context) {
    Widget customnav() {
      return BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (i) {
            setState(() {
              _selectedIndex = i;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Image.asset(
                    'assets/icons/Home.png',
                    width: 24,
                    color: _selectedIndex == 0 ? brownColor : Color(0xff8d8d8d),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Image.asset(
                    'assets/icons/Heart.png',
                    width: 24,
                    color: _selectedIndex == 1 ? brownColor : Color(0xff8d8d8d),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Image.asset(
                    'assets/icons/Bag 3.png',
                    width: 24,
                    color: _selectedIndex == 2 ? brownColor : Color(0xff8d8d8d),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Image.asset(
                    'assets/icons/Notification.png',
                    width: 24,
                    color: _selectedIndex == 3 ? brownColor : Color(0xff8d8d8d),
                  ),
                ),
                label: '')
          ]);
    }

    return Scaffold(
      bottomNavigationBar: customnav(),
      body: Stack(
        children: _screens
            .asMap()
            .map((i, screen) => MapEntry(
                i,
                Offstage(
                  offstage: _selectedIndex != i,
                  child: screen,
                )))
            .values
            .toList(),
      ),
    );
  }
}
