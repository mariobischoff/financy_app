import 'package:financy_app/app/features/sign_up/sign_up_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: defaultTheme,
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}
