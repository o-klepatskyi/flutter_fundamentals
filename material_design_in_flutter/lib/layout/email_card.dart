import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../schema/email.dart';

class EmailCard extends StatelessWidget {
  const EmailCard({required this.email});

  final Email email;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: const Color.fromRGBO(247, 229, 215, 100),
                    child: Icon(email.icon),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            email.subject,
                            style: const TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            email.body,
                            style: const TextStyle(color: Colors.grey),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(_formatDate(email.date)),
                      Icon(Icons.star_border, color: Colors.yellow[700]),
                    ],
                  )
                ])));
  }

  String _formatDate(DateTime datetime) {
    if (DateTime.now().difference(datetime) > const Duration(days: 365)) {
      return DateFormat('dd-MM-yyyy').format(datetime);
    }
    if (DateTime.now().difference(datetime) >= const Duration(days: 1)) {
      return DateFormat('dd MMM').format(datetime);
    }
    return DateFormat('kk:mm').format(datetime);
  }
}
