import 'layout/email_list_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(GmailApp());

class GmailApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail clone',
      home: EmailListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
