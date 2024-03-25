import 'package:flutter/material.dart';

class GmailDrawer extends StatelessWidget {
  const GmailDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 8.0,
                left: 4.0,
                child: Text(
                  "GMail",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Обрані'),
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
    );
  }
}
