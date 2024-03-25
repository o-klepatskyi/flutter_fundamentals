import '../schema/email.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EmailDetailScreen extends StatelessWidget {
  const EmailDetailScreen({super.key, required this.email});

  final Email email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(email.subject),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Hero(
                    tag: 'emailIcon-${email.subject}',
                    child: Icon(email.icon, size: 50.0),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Text(
                      email.subject,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Text(
                'Date: ${DateFormat('dd-MM-yyyy HH:mm:ss').format(email.date)}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 20.0),
              Text(
                email.body,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
