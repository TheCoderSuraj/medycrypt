import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:medycrypt/core/auth/screens/login_screen.dart';
import 'package:medycrypt/core/general/screens/home_screen.dart';

import '../../../utils/assets_path.dart';
import '../../../widgets/screen_page_setup.dart';
import '../../../widgets/spinning_widget.dart';
import '../../auth/functions/auth/auth.dart';

class SplashScreen extends StatefulWidget {
  static const id = "SplashScreenId";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 1500), () {
      if (Auth.checkIfUserLoggedIn()) {
        Navigator.pushNamedAndRemoveUntil(
            context, HomeScreen.id, (route) => false);
      } else {
        Navigator.pushNamedAndRemoveUntil(
          context,
          LoginScreen.id,
          (r) => false,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenPageSetup(
        children: [
          const Spacer(),
          // Center(
          //   child: CircleAvatar(
          //     radius: 100,
          //     backgroundColor: Colors.lightBlueAccent[100],
          //     child: Image.asset(
          //       apDemoImg,
          //       width: 150,
          //     ),
          //   ),
          //   // child: Text("Loading..."),
          // ),
          SpinningWidget(),
          const Spacer(),
          // const SizedBox(height: 20),
        ],
      ),
    );
  }
}
