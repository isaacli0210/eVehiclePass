import 'package:flutter/material.dart';
import 'package:e_vehicle_pass/styling.dart';

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('二期卸貨區', style: heading),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => {},
          icon: Icon(Icons.monetization_on, color: themeNavy, size: 30),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.location_on, color: themeNavy, size: 30),
          )
        ],
      ),
    );
  }
}