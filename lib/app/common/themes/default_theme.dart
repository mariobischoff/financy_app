import 'package:financy_app/app/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

final defaultTheme = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: const OutlineInputBorder()
        .copyWith(borderSide: const BorderSide(color: AppColors.greenlightTwo)),
    border: const OutlineInputBorder(),
  ),
);
