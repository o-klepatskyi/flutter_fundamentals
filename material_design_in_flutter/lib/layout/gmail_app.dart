import 'package:flutter/material.dart';
import 'email_list_screen.dart';
import 'top_bar.dart';
import 'gmail_drawer.dart';

enum TabIndex { starred, incoming, outgoing, bin }

class NavDestination {
  const NavDestination({required this.label, required this.icon});

  final String label;
  final Widget icon;
}

class GmailApp extends StatefulWidget {
  const GmailApp({super.key});

  @override
  State<StatefulWidget> createState() => GmailAppState();
}

class GmailAppState extends State<GmailApp>
    with SingleTickerProviderStateMixin {
  late TabIndex _currentTab;
  late TabController _tabController;
  final List<NavDestination> destinations = const [
    NavDestination(
      icon: Icon(Icons.star),
      label: 'Обрані',
    ),
    NavDestination(
      icon: Icon(Icons.inbox),
      label: 'Вхідні',
    ),
    NavDestination(
      icon: Icon(Icons.send),
      label: 'Надіслані',
    ),
    NavDestination(
      icon: Icon(Icons.delete),
      label: 'Кошик',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _currentTab = TabIndex.incoming;
    _tabController = TabController(length: tabs.length, vsync: this);
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
      body: _buildTabBarView(),
      bottomNavigationBar: _buildBottomNavBar(),
      floatingActionButton: _buildActionButton(),
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: const [
        Center(child: Text('Content of Обрані')),
        EmailListScreen(),
        Center(child: Text('Content of Надіслані')),
        Center(child: Text('Content of Кошик')),
      ],
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      items: destinations.map((NavDestination dst) {
        return BottomNavigationBarItem(icon: dst.icon, label: dst.label);
      }).toList(),
      currentIndex: _currentTab.index,
      onTap: _selectTab,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.redAccent,
    );
  }

  Widget _buildActionButton() {
    return FloatingActionButton.extended(
      onPressed: () {
        // Action to be performed when the button is pressed
        print('Floating Action Button Pressed');
      },
      icon: const Icon(Icons.edit),
      label: const Text('Написати'),
      backgroundColor: Colors.redAccent,
    );
  }
}
