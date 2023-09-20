import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:posithiva/auth/LoginPage.dart';
import 'package:posithiva/pages/HomePageUser.dart';
import 'package:posithiva/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  // @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? token = '';

  Future<String?> _getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final data = prefs.getString('token');
    setState(() {
      token = data;
    });
  }

  @override
  void initState() {
    super.initState();
    _getToken();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Transform.scale(
        scale: 2,
        child: Image.asset(
          "assets/images/logo.png",
        ),
      ),
      nextScreen: token != ''
          ? HomePageUser()
          : LoginPage(), // Gantilah dengan halaman utama Anda
      splashTransition: SplashTransition.fadeTransition, // Animasi fade
      duration: 3000, // Durasi tampilan splash screen (dalam milidetik)
      backgroundColor: birumuda, // Warna latar belakang
    );
  }
}
