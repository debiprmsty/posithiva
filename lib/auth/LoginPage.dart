import 'package:flutter/material.dart';
import 'package:posithiva/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: birumuda,
            child: Column(
              children: [
                SizedBox(
                  width: 12,
                  height: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
