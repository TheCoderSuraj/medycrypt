import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const id = "SettingsScreenId";
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
    );
  }
}
