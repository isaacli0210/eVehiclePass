import 'package:flutter/material.dart';
import 'package:e_vehicle_pass/styling.dart';
import 'package:barcode_scan/barcode_scan.dart';

class ClockOut extends StatelessWidget {
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
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.65,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.35,
                child: Image.asset('assets/images/clockOut_illustration.png')
              ),
              Container(
                constraints: BoxConstraints.expand(height: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 280.0,
                      height: 60.0,
                      child: FlatButton(
                        color: themeRed,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Text('掃𣈴離場', style: buttonText),
                        onPressed: () async {
                          var result = await BarcodeScanner.scan();
  
                          print(result.type); // The result type (barcode, cancelled, failed)
                          print(result.rawContent); // The barcode content
                          print(result.format); // The barcode format (as enum)
                          print(result.formatNote);
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}