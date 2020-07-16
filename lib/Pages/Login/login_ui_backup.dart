import 'package:flutter/material.dart';
import 'package:e_vehicle_pass/styling.dart';
import 'package:e_vehicle_pass/size_config.dart';
import 'package:e_vehicle_pass/Pages/BottomNavigationBar/bottomNavBar.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.75,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('assets/images/login_illustration.png'),
              Text('電子送貨車輛許可證系統', style: appTitle),
              Container(
                width: MediaQuery.of(context).size.width * 0.33,
                height: MediaQuery.of(context).size.height * 0.12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    customTextField('用戶名稱', Icon(Icons.person), false),
                    customTextField('密碼', Icon(Icons.lock), true)
                  ],
                ),
              ),
              ButtonTheme(
                minWidth: 280.0,
                height: 60.0,
                child: FlatButton(
                  color: themeGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavBarPage())),
                  child: Text('登入', style: buttonText),
                ),
              ),
            ],
          ),
        ),
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