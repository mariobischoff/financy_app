import 'package:financy_app/app/common/constants/app_colors.dart';
import 'package:financy_app/app/common/constants/app_text_style.dart';
import 'package:financy_app/app/common/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              color: AppColors.iceWhite,
              child: Image.asset('assets/images/man.png'),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            'Spend Smarter',
            style: AppTextStyle.mediumText.copyWith(
              color: AppColors.greenlightTwo,
              letterSpacing: -2,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Save More',
            style: AppTextStyle.mediumText.copyWith(
              color: AppColors.greenlightTwo,
              letterSpacing: -2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: PrimaryButton(
              text: 'Get Started',
              onPressed: () {},
            ),
          ),
          Text(
            'Already have account? Log In',
            style: AppTextStyle.smallText.copyWith(
              color: AppColors.grey,
            ),
          ),
          const SizedBox(height: 50)
        ],
      ),
    );
  }
}
