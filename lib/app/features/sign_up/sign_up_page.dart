import 'package:financy_app/app/common/constants/app_colors.dart';
import 'package:financy_app/app/common/constants/app_text_style.dart';
import 'package:financy_app/app/common/widgets/custom_text_form_field.dart';
import 'package:financy_app/app/common/widgets/multi_text_button.dart';
import 'package:financy_app/app/common/widgets/password_form_field.dart';
import 'package:financy_app/app/common/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 52),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Starting Saving',
                style: AppTextStyle.mediumText.copyWith(
                  color: AppColors.greenlightTwo,
                  letterSpacing: -2,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Your Money!',
                style: AppTextStyle.mediumText.copyWith(
                  color: AppColors.greenlightTwo,
                  letterSpacing: -2,
                ),
              ),
              Image.asset('assets/images/sign_up_image.png'),
              Form(
                child: Column(
                  children: [
                    const CustomTextFormField(
                      labelText: 'Name',
                      hintText: 'Jon Doe',
                    ),
                    const CustomTextFormField(
                      labelText: 'Email',
                      hintText: 'yourbest@email.com',
                      textInputType: TextInputType.emailAddress,
                    ),
                    const PasswordFormField(labelText: 'CHOOSE YOUR PASSWORD'),
                    const PasswordFormField(labelText: 'CONFIRM YOUR PASSWORD'),
                    PrimaryButton(
                      text: 'Sign Up',
                      onPressed: () => print('sign up'),
                    ),
                  ],
                ),
              ),
              MultiTextButton(
                onPressed: () => print('click multi text button'),
                children: [
                  Text(
                    'Already Have Account?',
                    style: AppTextStyle.smallText.copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                  Text(
                    ' Sign In',
                    style: AppTextStyle.smallText.copyWith(
                      color: AppColors.greenlightTwo,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
