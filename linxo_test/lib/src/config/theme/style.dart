import 'package:flutter/material.dart';
import 'package:linxo_test/src/config/theme/color.dart';

abstract class AppTextStyle {
  /// Used to setup all sub method
  static TextStyle defaultStyle(Color color, double fontSize, {FontWeight weight = FontWeight.w400, TextDecoration? decoration}) =>
      TextStyle(color: color, fontSize: fontSize, fontWeight: weight, decoration: decoration, fontFamily: "Satoshi");

  /// Definition for AppColor ///
  static TextStyle primary(double fontSize, {FontWeight weight = FontWeight.w400, TextDecoration? decoration}) =>
      defaultStyle(AppColor.primary, fontSize, weight: weight, decoration: decoration);

  static TextStyle darkBlue(double fontSize, {FontWeight weight = FontWeight.w400, TextDecoration? decoration}) =>
      defaultStyle(AppColor.darkBlue, fontSize, weight: weight, decoration: decoration);

  static TextStyle darkGrey(double fontSize, {FontWeight weight = FontWeight.w400, TextDecoration? decoration}) =>
      defaultStyle(AppColor.darkGrey, fontSize, weight: weight, decoration: decoration);

  static TextStyle white(double fontSize, {FontWeight weight = FontWeight.w400, TextDecoration? decoration}) =>
      defaultStyle(Colors.white, fontSize, weight: weight, decoration: decoration);
}
