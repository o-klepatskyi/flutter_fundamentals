import 'package:flutter/material.dart';

class GmailTopBar extends StatelessWidget {
  const GmailTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Пошук у пошті',
              fillColor: Color.fromRGBO(247, 229, 215, 100),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: CircleAvatar(
              backgroundColor: Colors.redAccent,
              child: Text('OК', style: TextStyle(color: Colors.white)),
            )),
      ],
    );
  }
}
