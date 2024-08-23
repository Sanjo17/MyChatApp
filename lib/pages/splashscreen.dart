import 'package:flutter/material.dart';
import 'package:mychatapp/pages/login_page.dart';
import 'package:mychatapp/pages/register_page.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  bool loginPage = true;
  void togglePages() {
    setState(() {
      if (loginPage) {
        loginPage = false;
      } else {
        loginPage = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
