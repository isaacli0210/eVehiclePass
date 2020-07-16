import 'package:flutter/material.dart';
import 'package:e_vehicle_pass/size_config.dart';

class AppTheme {

  AppTheme._();

// ************************************* Theme Color *************************************
Color bgColor = Color.fromARGB(255, 240, 240, 240); 

Color themeGreen = Color.fromARGB(255, 53, 214, 185);  // For normal button / tint
Color themeRed   = Color.fromARGB(255, 240, 91, 91);   // For alert button / alert component bg
Color themeNavy  = Color.fromARGB(255, 30, 62, 91);    // For heading / body / important component bg
Color themeGrey  = Color.fromARGB(255, 98, 98, 98);    // For title / textfield border

Color subGrey    = Color.fromARGB(255, 165, 165, 165); // For placeholder / hint text
Color subBlue    = Color.fromARGB(255, 54, 131, 221);  // For normal component bg
Color subYellow  = Color.fromARGB(255, 217, 168, 44);  // For chargeable tag

// For valid pass message bg
Color gradientGreen_0 = Color.fromARGB(255, 53, 214, 156);
Color gradientGreen_1 = Color.fromARGB(255, 54, 156, 163);

// For invalid pass message bg
Color gradientRed_0 = Color.fromARGB(255, 221, 74, 74);
Color gradientRed_1 = Color.fromARGB(255, 194, 43, 97);

// For pre-clock-in pass message bg
Color gradientNavy_0 = Color.fromARGB(255, 53, 117, 214);
Color gradientNavy_1 = Color.fromARGB(255, 53, 64, 124);
// ************************************* Theme Color *************************************

}