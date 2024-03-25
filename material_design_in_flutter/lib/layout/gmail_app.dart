import 'package:flutter/material.dart';
import 'email_list_screen.dart';
import 'top_bar.dart';
import 'drawer.dart';

enum TabItem { starred, incoming, outgoing, bin }
class GmailApp extends StatefulWidget {
  const GmailApp({super.key});

  @override
  State<StatefulWidget> createState() => GmailAppState();
}

class GmailAppState extends State<GmailApp> {
  TabItem currentTab = TabItem.incoming;

  void _selectTab(int tabItem) {
    setState(() {
      currentTab = TabItem.values[tabItem];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const GmailTopBar()),
      drawer: const Drawer(child: GmailDrawer()),
      body: const EmailListScreen(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Обрані',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Вхідні',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Надіслані',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete),
            label: 'Кошик',
          ),
        ],
        currentIndex: currentTab.index,
        onTap: _selectTab,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.redAccent,
      ),
    );
  }

}