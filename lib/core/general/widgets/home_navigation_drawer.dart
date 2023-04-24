import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/common_methods.dart';
import '../../../utils/constants.dart';
import '../../auth/functions/auth/auth.dart';
import '../../auth/screens/login_screen.dart';
import '../screens/settings_screen.dart';
import 'drawer_element.dart';

class HomeNavigationDrawer extends StatelessWidget {
  const HomeNavigationDrawer({
    super.key,
    required this.context,
  });
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightBlue[300],
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeader(),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Divider(
                thickness: 6,
                color: Colors.white,
              ),
            ),
            _buildBody(),
            // const Spacer(),
            // _buildFooter(),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Material(
      // height: 150,
      // padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),

      // decoration: BoxDecoration(
      //   borderRadius: const BorderRadius.vertical(
      //     bottom: Radius.circular(20),
      //   ),
      //   color: Colors.blue[500],
      elevation: 10,
      // ),
      color: Colors.blue[500],
      child: Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 30),
        // padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(height: 25),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                apAppLogoPath,
                height: 100,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              kAppName,
              style: kSubtitleTextStyle.copyWith(color: kWhiteColor),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        // DrawerElement(
        //   title: "Sign Up",
        //   iconData: Icons.person_add_alt,
        //   // iconData: Icons.login,
        //   onPressed: () {},
        // ),

        DrawerElement(
          title: "Settings",
          iconData: Icons.settings,
          onPressed: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, SettingsScreen.id);
          },
        ),

        // DrawerElement(
        //   title: "Feedback",
        //   iconData: Icons.feedback,
        //   onPressed: () {
        //     // launchUrl(Uri.parse(kFeedbackFormLink));
        //   },
        // ),

        DrawerElement(
          title: "Log out",
          iconData: Icons.logout,
          onPressed: () {
            Auth.signOutUser();
            Navigator.pushNamedAndRemoveUntil(
                context, LoginScreen.id, (route) => false);
          },
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Wrap(
      children: [
        Text("Made with "),
        Icon(
          Icons.favorite,
          color: Colors.red,
        ),
        Text(" by KAS"),
      ],
    );
  }
}
