import 'package:flutter/material.dart';
import 'package:slack_profile/home.dart';
import 'package:slack_profile/theme.dart';

void main() => runApp(const ProfileApp());

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const Home(),
    );
  }
}
