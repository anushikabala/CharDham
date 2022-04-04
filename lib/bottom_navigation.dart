import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationBarTravel extends StatefulWidget {
  @override
  _BottomNavigationBarTravelState createState() =>
      _BottomNavigationBarTravelState();
}

class _BottomNavigationBarTravelState extends State<BottomNavigationBarTravel> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  var bottomNavStyle =
  GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: const Offset(0, 5))
      ]),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? new Image.asset('assets/images/homegrey.png')
                  : new Image.asset('assets/images/homeblack.png'),
              label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? new Image.asset('assets/images/homegrey.png')
                : new Image.asset('assets/images/homeblack.png'),
            label: 'Heart',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? new Image.asset('assets/images/homegrey.png')
                : new Image.asset('assets/images/homeblack.png'),
            label: 'Plus',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? new Image.asset(
                'assets/images/homegrey.png')
                : new Image.asset('assets/images/homeblack.png'),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4
                ? new Image.asset('assets/images/homegrey.png')
                : new Image.asset('assets/images/homeblack.png'),
            label: 'User',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
      ),
    );
  }
}