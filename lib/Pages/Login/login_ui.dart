import 'package:flutter/material.dart';
import 'package:e_vehicle_pass/styling.dart';
import 'package:e_vehicle_pass/size_config.dart';
import 'package:e_vehicle_pass/images.dart';
import 'package:e_vehicle_pass/Pages/BottomNavigationBar/bottomNavBar.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Align(alignment: Alignment.center, child: LoginContentWidget()),
            ),
            Expanded(
              flex: 1,
              child: Align(alignment: Alignment.center, child: FormWidget()),
            ),
          ],
        ),
      )
    );
  }
}

class LoginContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12 * SizeConfig.widthMultiplier),
              child: Image.asset(Images.loginImage, fit: BoxFit.contain),
            )
          ),
        ],
      ),
    );
  }
}

class FormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(bottom: 1 * SizeConfig.heightMultiplier),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FittedBox(
                  child: Text(
                    '電子送貨車輛許可證系統',
                    style: appTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35 * SizeConfig.widthMultiplier),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  customTextField('用戶名稱', Icon(Icons.person), false),
                  customTextField('密碼', Icon(Icons.lock), true)
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(bottom: 1 * SizeConfig.heightMultiplier),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FittedBox(
                  child: Text(
                    '電子送貨車輛',
                    style: appTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget customTextField(String hintText, Widget icon, bool isObsure) {
    return Theme(
      data: ThemeData(primaryColor: themeGrey),
          child: TextField(
        obscureText: isObsure,
        decoration: InputDecoration(
          labelText: hintText,
          labelStyle: hint,
          prefixIcon: icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
          )
        ),
      ),
    );
  }
}