import 'package:flutter/material.dart';
import 'package:medycrypt/core/auth/screens/error_screen.dart';
import 'package:medycrypt/core/auth/screens/login_screen.dart';
import 'package:medycrypt/core/general/screens/home_screen.dart';
import 'package:medycrypt/utils/validity_methods.dart';

import 'core/auth/screens/email_verification_screen.dart';
import 'core/auth/screens/forget_password_screen.dart';
import 'core/general/screens/settings_screen.dart';
import 'core/general/screens/splash_screen.dart';
import 'core/meds/screens/add_report_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      // general
      case HomeScreen.id:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case SettingsScreen.id:
        return MaterialPageRoute(
          builder: (context) => const SettingsScreen(),
        );
      case SplashScreen.id:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

      // meds
      // case AddReportScreen.id:
      case AddReportScreen.id:
        return MaterialPageRoute(
          builder: (context) => const AddReportScreen(),
        );

      // Auth
      case LoginScreen.id:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case ForgetPasswordScreen.id:
        return MaterialPageRoute(
          builder: (context) => const ForgetPasswordScreen(),
        );
      case EmailVerificationScreen.id:
        if (args == null || args is! String || validateEmail(args) != null) {
          return _errorRoute(
              message: "Email Verification: Invalid email address");
        }
        return MaterialPageRoute(
          builder: (context) => EmailVerificationScreen(
            email: args,
          ),
        );

      // default
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute({String? message}) {
    return MaterialPageRoute(
      builder: (context) => ErrorScreen(message: message ?? "Unknown error"),
    );
  }
}
