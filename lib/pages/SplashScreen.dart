import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:posithiva/auth/LoginPage.dart';
import 'package:posithiva/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Transform.scale(
        scale: 2,
        child: Image.asset("assets/images/logo.png",),
      ),
      nextScreen: LoginPage(), // Gantilah dengan halaman utama Anda
      splashTransition: SplashTransition.fadeTransition, // Animasi fade
      duration: 3000, // Durasi tampilan splash screen (dalam milidetik)
      backgroundColor: birumuda, // Warna latar belakang
    );
  }
}
