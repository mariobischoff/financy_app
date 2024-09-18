// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:financy_app/app/common/constants/app_colors.dart';
import 'package:financy_app/app/common/constants/app_text_style.dart';

class PasswordFormField extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String labelText;
  final FormFieldValidator<String>? validator;
  final String? helperText;
  const PasswordFormField({
    super.key,
    this.padding,
    required this.labelText,
    this.validator,
    this.helperText,
  });

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool obscure = true;
  String? _helperText;

  void toggleVisible() {
    setState(() {
      obscure = !obscure;
    });
  }

  final defaultBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(
      width: 2,
      color: AppColors.greenlightTwo,
    ),
  );

  @override
  void initState() {
    super.initState();
    _helperText = widget.helperText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
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
            setState(() {
              _helperText = widget.helperText;
            });
          }
        },
        validator: widget.validator,
        obscureText: obscure,
        decoration: InputDecoration(
          helperText: _helperText,
          helperMaxLines: 3,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.labelText.toUpperCase(),
          labelStyle: AppTextStyle.smallText.copyWith(
            color: AppColors.darkGrey,
          ),
          suffixIcon: IconButton(
            onPressed: () => toggleVisible(),
            icon: Icon(
              obscure ? Icons.visibility_sharp : Icons.visibility_off_sharp,
              color: AppColors.greenlightTwo,
            ),
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
