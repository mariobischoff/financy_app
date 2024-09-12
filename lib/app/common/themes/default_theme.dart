import 'package:financy_app/app/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

final defaultTheme = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: OutlineInputBorder()
        .copyWith(borderSide: BorderSide(color: AppColors.greenlightTwo)),
    border: OutlineInputBorder(),
  ),
);
