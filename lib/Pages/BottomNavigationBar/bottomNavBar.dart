import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_vehicle_pass/Pages/BottomNavigationBar/bottomNavBar_ui.dart';
import 'package:e_vehicle_pass/Pages/BottomNavigationBar/bottomNavBarProvider.dart';


class BottomNavBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<BottomNavBarProvider>(
        child: BottomNavBar(),
        create: (BuildContext context) => BottomNavBarProvider(),
      )
    );
  }
}