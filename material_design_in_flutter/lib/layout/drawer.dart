import 'package:flutter/material.dart';

class GmailDrawer extends StatelessWidget {
  const GmailDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            child: Text(
              'GMail',
              style: TextStyle(
                color: Colors.red,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Вхідні'),
          ),
          ListTile(
            leading: Icon(Icons.send),
            title: Text('Надіслані'),
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Кошик'),
          ),
        ],
      ),
    );
  }
}
