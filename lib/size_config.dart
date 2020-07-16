import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SizeConfig {
  static double _screenWidth;
  static double _screenHeight;
  static double _blockWidth = 0;
  static double _blockHeight = 0;

  static double textMultiplier;
  static double imageMultiplier;
  static double widthMultiplier;
  static double heightMultiplier;

  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BoxConstraints boxConstraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = boxConstraints.maxWidth;
      _screenHeight = boxConstraints.maxHeight;
      isPortrait = true;
      if (_screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = boxConstraints.maxHeight;
      _screenHeight = boxConstraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockWidth = _screenWidth / 100;
    _blockHeight = _screenHeight / 100;

    textMultiplier = _blockHeight;
    imageMultiplier = _blockWidth;
    widthMultiplier = _blockWidth;
    heightMultiplier = _blockHeight;
  }
}