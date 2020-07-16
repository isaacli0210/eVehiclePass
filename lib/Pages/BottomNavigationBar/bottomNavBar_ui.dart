import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_vehicle_pass/Pages/BottomNavigationBar/bottomNavBarProvider.dart';
import 'package:e_vehicle_pass/styling.dart';
import 'package:e_vehicle_pass/Pages/ClockIn/clockIn_ui.dart';
import 'package:e_vehicle_pass/Pages/ClockOut/clockOut_ui.dart';
import 'package:e_vehicle_pass/Pages/Admin/admin_ui.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  var currentPage = [
    ClockIn(),
    ClockOut(),
    Admin()
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavBarProvider>(context);

    return Scaffold(
      body: currentPage[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: themeNavy,
        unselectedItemColor: subGrey,
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.file_download),
            title: Text('進場')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_upload),
            title: Text('離場')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('管理')
          ),
        ],
      )
    );
  }
}