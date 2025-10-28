import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/about_me_screen.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/about': (context) => const AboutMeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}