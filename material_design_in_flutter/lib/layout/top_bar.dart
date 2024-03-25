import 'package:flutter/material.dart';

class GmailTopBar extends AppBar {
  GmailTopBar({
    super.key,
  }) : super(
    title: Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Пошук у пошті',
              fillColor: const Color.fromRGBO(247, 229, 215, 100),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        Container(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Text('OК'),
            )),
      ],
    )
  );
}