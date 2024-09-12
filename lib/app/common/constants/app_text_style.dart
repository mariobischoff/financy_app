import 'package:flutter/material.dart';

class AppTextStyle {
  AppTextStyle._();

  static const TextStyle bigText = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    fontSize: 50,
  );

  static const TextStyle mediumText = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
    fontSize: 36,
  );

  static const TextStyle smallText = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static const TextStyle buttonText = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: Colors.white,
  );
}
