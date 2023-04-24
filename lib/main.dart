import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:medycrypt/route_generator.dart';
import 'package:oktoast/oktoast.dart';
import 'core/general/screens/splash_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MedyCryptApp());
}

class MedyCryptApp extends StatelessWidget {
  const MedyCryptApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
        initialRoute: SplashScreen.id,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
