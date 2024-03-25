import 'package:flutter/material.dart';
import 'email_card.dart';
import '../schema/email.dart';

class EmailListScreen extends StatelessWidget {
  const EmailListScreen({super.key, required this.emails});

  final List<Email> emails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: ListView.separated(
          itemCount: emails.length,
          itemBuilder: (context, index) {
            return EmailCard(email: emails[index]);
          },
          separatorBuilder: (context, index) => const Divider(
            color: Colors.transparent,
            height: 10,
          ),
        ),
      ),
    );
  }
}
