import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medycrypt/utils/constants.dart';

import '../widgets/home_navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  static const id = "HomeScreenId";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppName),
      ),
      drawer: HomeNavigationDrawer(
        context: context,
      ),
    );
  }
}
