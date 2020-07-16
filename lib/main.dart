import 'package:flutter/material.dart';
import 'package:e_vehicle_pass/size_config.dart';
import 'package:e_vehicle_pass/Pages/Login/login_ui.dart';

void main() => runApp(EVP());

class EVP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Login(),
    // );
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'eVehiclePass',
              home: Login(),
            );
          },
        );
      },
    );
  }
}