import 'layout/email_list_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const GmailApp());

class GmailApp extends StatelessWidget {
  const GmailApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gmail clone',
      home: EmailListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
