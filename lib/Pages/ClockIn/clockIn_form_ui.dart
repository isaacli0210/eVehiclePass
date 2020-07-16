import 'package:flutter/material.dart';
import 'package:e_vehicle_pass/styling.dart';

class ClockInForm extends StatelessWidget {
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
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            validityCard(true, context),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                cardHeading(Icons.info, '通行證資料'),
                cardHeading(Icons.timer, '現在時間 - 09:41')
              ],
            ),
            
            
          ],
        ),
      ),
    );
  }


  Widget validityCard(bool isValid, BuildContext context) {
    String validity = '';
    String validityMessage = '';
    Color gradient_0;
    Color gradient_1;
    IconData validityIcon;

    if (isValid) {
      validity = '有效';
      validityMessage = '可以進場';
      gradient_0 = gradientGreen_0;
      gradient_1 = gradientGreen_1;
      validityIcon = Icons.check_box;

    } else {
      validity = '無效';
      gradient_0 = gradientRed_0;
      gradient_1 = gradientRed_1;
      validityMessage = '超出進場時間';
      validityIcon = Icons.report;
    }

    return Container(
      constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height * 0.1),
      margin: EdgeInsets.fromLTRB(50, 20, 50, 30),
      padding: EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [gradient_0, gradient_1]
        )
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(validityIcon, color: Colors.white, size: 30),
              Text('$validity通行證', style: validityTitle),
              Icon(validityIcon, color: Colors.white, size: 30)
            ],
          ),
          Text('$validityMessage', style: validityContent,)
        ],
      ),
    );
  }

  Widget cardHeading(IconData headingIcon, String headingText) {
    return Container(
      margin: EdgeInsets.only(left: 50, right: 50),
      child: Row(
        children: <Widget>[
          Icon(headingIcon, size: 30),
          Text(headingText, style: heading)
        ],
      ),
    );
  }

  Widget passInfoCard() {
    return Card(
      
    );
  }
}