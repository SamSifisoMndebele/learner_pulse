import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(const LearnerPulseApp());
}

class LearnerPulseApp extends StatelessWidget {
  const LearnerPulseApp({super.key});

  @override
  Widget build(BuildContext context) {
    const brandBlue = Color(0xFF1E4662);
    const brandOrange = Color(0xFFFD751D);

    return MaterialApp(
      title: 'Learner Pulse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F7FB),
        colorScheme: ColorScheme.fromSeed(
          seedColor: brandBlue,
          brightness: Brightness.light,
        ).copyWith(primary: brandBlue, secondary: brandOrange),
        appBarTheme: const AppBarTheme(
          backgroundColor: brandBlue,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: brandOrange,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
