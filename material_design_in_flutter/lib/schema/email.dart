import 'package:flutter/material.dart';

class Email {
  String subject;
  String body;
  DateTime date;
  IconData icon;

  Email(
      {required this.subject,
      required this.body,
      required this.date,
      required this.icon});
}
