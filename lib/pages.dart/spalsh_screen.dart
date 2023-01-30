import 'package:flutter/material.dart';
import 'package:rishad_project/main.dart';
import 'package:rishad_project/pages.dart/home_screen.dart';
import 'package:rishad_project/pages.dart/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    checkUserLoggedIn();
    super.initState();
  } 

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(
            'assets/images/contact.png',
          ),
        ),
      ),
    );
  }

  Future<void> goTologin() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => LoginScreen(),
      ),
    );
  }

  Future<void> checkUserLoggedIn() async {
    final _sharedPrefs = await SharedPreferences.getInstance();

    final _userLoggedIn = _sharedPrefs.getBool(SAVE_KEY_NAME);

    if (_userLoggedIn == null || _userLoggedIn == false) {
      goTologin();
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx1) => HomeScreen(),
        ),
      );
    }
  }
}
