import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void navigatorPop() {
      Navigator.pop(context);
    }

    return SafeArea(
      child: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/images/google-play-logo.png',
                    width: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Google Play'),
                ],
              ),
            ),
            Divider(
              color: Colors.black54,
              indent: 8,
            ),
            ListTile(
              leading: Icon(Icons.apps),
              dense: true,
              title: Text('My apps & games'),
              onTap: () => navigatorPop(),
            ),
            ListTile(
              leading: Icon(Icons.notifications_none),
              dense: true,
              title: Text('Notifications'),
              onTap: () => navigatorPop(),
            ),
            ListTile(
              leading: Icon(Icons.cached),
              dense: true,
              title: Text('Subscriptions'),
              onTap: () => navigatorPop(),
            ),
            ListTile(
              leading: Icon(Icons.bookmark_border),
              dense: true,
              title: Text('Wishlist'),
              onTap: () => navigatorPop(),
            ),
            Divider(
              color: Colors.black54,
              indent: 8,
            ),
            ListTile(
              leading: Icon(Icons.perm_identity),
              dense: true,
              title: Text('Account'),
              onTap: () => navigatorPop(),
            ),
            ListTile(
              leading: Icon(Icons.payment),
              dense: true,
              title: Text('Payment methods'),
              onTap: () => navigatorPop(),
            ),
            ListTile(
              leading: Icon(Icons.security),
              dense: true,
              title: Text('Play protect'),
              onTap: () => navigatorPop(),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              dense: true,
              title: Text('Settings'),
              onTap: () => navigatorPop(),
            ),
            Divider(
              color: Colors.black54,
              indent: 8,
            ),
            ListTile(
              leading: Icon(Icons.local_movies),
              trailing: Icon(Icons.exit_to_app),
              dense: true,
              title: Text('Open Movies app'),
              onTap: () => navigatorPop(),
            ),
            ListTile(
              leading: Icon(Icons.book),
              trailing: Icon(Icons.exit_to_app),
              dense: true,
              title: Text('Open Books app'),
              onTap: () => navigatorPop(),
            ),
            Divider(
              color: Colors.black54,
              indent: 8,
            ),
            ListTile(
              dense: true,
              title: Text('Redeem'),
              onTap: () => navigatorPop(),
            ),
            ListTile(
              dense: true,
              title: Text('Help & feedback'),
              onTap: () => navigatorPop(),
            ),
            ListTile(
              dense: true,
              title: Text('Parent Guide'),
              onTap: () => navigatorPop(),
            ),
            ListTile(
              dense: true,
              title: Text('About Google Play'),
              onTap: () => navigatorPop(),
            ),
          ],
        ),
      ),
    );
  }
}
