import 'package:abigail_askbilly/LoadingPage/Loadingpage.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
            Container(
              padding: padding,
              child: Column(
                children: [
                  SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Home',
                    icon: Icons.home,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Maps',
                    icon: Icons.location_pin,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  SizedBox(height: 16),
                  buildMenuItem(
                    text: 'FAQs',
                    icon: Icons.question_answer,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  buildMenuItem(
                    text: 'About NU',
                    icon: Icons.info,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Admin',
                    icon: Icons.person,
                    onClicked: () => selectedItem(context, 4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => loadingPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => loadingPage(),
        ));
        break;
    }
  }
}
