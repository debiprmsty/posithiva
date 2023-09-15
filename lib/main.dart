import 'package:flutter/material.dart';
import 'package:posithiva/auth/LoginPage.dart';
import 'package:posithiva/auth/RegisterPage.dart';
import 'package:posithiva/kurir/EndKurir.dart';
import 'package:posithiva/kurir/KurirInstan.dart';
import 'package:posithiva/kurir/KurirReguler.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POSITHIVA',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
