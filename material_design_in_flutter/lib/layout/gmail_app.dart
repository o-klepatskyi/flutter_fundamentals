import 'package:flutter/material.dart';
import 'email_list_screen.dart';
import 'top_bar.dart';
import 'drawer.dart';

enum TabIndex { starred, incoming, outgoing, bin }

class GmailApp extends StatefulWidget {
  const GmailApp({super.key});

  @override
  State<StatefulWidget> createState() => GmailAppState();
}

class GmailAppState extends State<GmailApp>
    with SingleTickerProviderStateMixin {
  late TabIndex _currentTab;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _currentTab = TabIndex.incoming;
    _tabController = TabController(length: TabIndex.values.length, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentTab = TabIndex.values[_tabController.index];
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _selectTab(int index) {
    setState(() {
      _currentTab = TabIndex.values[index];
      _tabController.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const GmailTopBar()),
      drawer: const Drawer(child: GmailDrawer()),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text('Content of Обрані')),
          EmailListScreen(),
          Center(child: Text('Content of Надіслані')),
          Center(child: Text('Content of Кошик')),
        ],
      ),
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
        currentIndex: _currentTab.index,
        onTap: _selectTab,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.redAccent,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Action to be performed when the button is pressed
          print('Floating Action Button Pressed');
        },
        icon: const Icon(Icons.edit),
        label: const Text('Написати'),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
