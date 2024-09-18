// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:financy_app/app/common/constants/app_colors.dart';
import 'package:financy_app/app/common/constants/app_text_style.dart';

class CustomTextFormField extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String labelText;
  final String? hintText;
  final TextCapitalization? textCapitalization;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final String? helperText;
  const CustomTextFormField({
    super.key,
    this.padding,
    required this.labelText,
    this.hintText,
    this.textCapitalization,
    this.textInputType,
    this.textInputAction,
    this.validator,
    this.helperText,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final defaultBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(
      width: 2,
      color: AppColors.greenlightTwo,
    ),
  );
  String? _helperText;

  @override
  void initState() {
    super.initState();
    _helperText = widget.helperText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 12.0,
          ),
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            setState(() {
              _helperText = null;
            });
          } else if (value.isEmpty) {
            _helperText = widget.helperText;
          }
        },
        validator: widget.validator,
        textInputAction: widget.textInputAction,
        keyboardType: widget.textInputType,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        decoration: InputDecoration(
          helperText: _helperText,
          helperMaxLines: 3,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: widget.hintText,
          hintStyle: AppTextStyle.smallText.copyWith(
            color: AppColors.darkGrey,
          ),
          labelText: widget.labelText.toUpperCase(),
          labelStyle: AppTextStyle.smallText.copyWith(
            color: AppColors.darkGrey,
          ),
          enabledBorder: defaultBorder,
          disabledBorder: defaultBorder,
          focusedBorder: defaultBorder,
          focusedErrorBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          errorBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
