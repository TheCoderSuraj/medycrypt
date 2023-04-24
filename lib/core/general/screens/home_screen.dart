import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medycrypt/utils/constants.dart';
import 'package:medycrypt/widgets/action_button.dart';
import 'package:medycrypt/widgets/screen_page_setup.dart';

import '../../meds/screens/add_report_screen.dart';
import '../../meds/screens/view_report_screen.dart';
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
      body: ScreenPageSetup(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          ActionButton(
            title: "Add New Report",
            onPressed: () {
              Navigator.pushNamed(context, AddReportScreen.id);
            },
          ),
          const SizedBox(height: 15),
          ActionButton(
            title: "Medical Reports",
            onPressed: () {
              Navigator.pushNamed(context, ViewReportScreen.id);
            },
          ),
          const SizedBox(height: 15),
        ],
      ),
      drawer: HomeNavigationDrawer(
        context: context,
      ),
    );
  }
}
