import 'package:eco_trade/core/clr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Style {
  //New
  static const txt28Whitew900 = TextStyle(
    color: Colors.white,
    fontSize: 28,
    fontWeight: FontWeight.w900,
  );

  static const txt22Whitew900 = TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.w900,
  );
  static const txt16Whitew700 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static const txt12w400 =
      TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400);
  static const txt16w400 =
      TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400);
  static const txt16w400underline = TextStyle(
      color: Clr.grey7a,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline);

  static const txt16w400o35 = TextStyle(
      color: Color(0x80000000), fontSize: 16, fontWeight: FontWeight.w400);

  static const txt16w500 =
      TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);

  static const txt28w500 = TextStyle(
    color: Colors.black,
    fontSize: 28,
    fontWeight: FontWeight.w500,
  );

  /// ROBOTO
  static const txt26 = TextStyle(
      color: Colors.black,
      fontSize: 26,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1);

  /// ROBOTO
  static const txt24 =
      TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w400);

  static const txt16 =
      TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700);

  static const txt16Grey7a = TextStyle(
      color: Clr.grey7a,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.1);

  static const txt16Grey66 = TextStyle(
      color: Clr.grey66,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.1);

  static const txt16Black =
      TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w900);

  static const txt16gray =
      TextStyle(color: Clr.grey, fontSize: 16, fontWeight: FontWeight.w400);

  /// TODO: RUBIK
  static const txtR13 = TextStyle(
      color: Colors.black,
      fontSize: 13,
      fontWeight: FontWeight.w400,
      wordSpacing: 0.2);

  static const txtR16Primary = TextStyle(
      color: Clr.primary,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      wordSpacing: 0.1);

  static const txtR18 = TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      wordSpacing: 0.1);

  /// MONTSERRAT
  static const txtM16 = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.w900,
      letterSpacing: 0.1);
}
