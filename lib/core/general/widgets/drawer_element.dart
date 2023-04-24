import 'package:flutter/material.dart';

class DrawerElement extends StatelessWidget {
  const DrawerElement({
    Key? key,
    required this.title,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final IconData iconData;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textColor: Colors.white,
        iconColor: Colors.white,
        tileColor: Colors.blue,
        // tileColor: Colors.lightBlue[400],
        selectedColor: Colors.blue[500],
        hoverColor: Colors.blue[500],
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        leading: Icon(iconData),
        onTap: onPressed,
      ),
    );
  }
}
