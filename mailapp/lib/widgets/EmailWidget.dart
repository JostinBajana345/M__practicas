
// ignore_for_file: file_names, prefer_const_constructors

import 'package:mailapp/model/email.dart';
import 'package:flutter/material.dart';

class EmailWidget extends StatelessWidget {
  final Email email;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  const EmailWidget({
    Key? key,
    required this.email,
    this.onTap,
    this.onLongPress,
  }) : super(key: key);

 @override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: onTap,
    onLongPress: onLongPress,
    child: Center( // Centra el ListTile en la pantalla
      child: Padding(
        padding: EdgeInsets.all(8.0), // Agrega un espacio alrededor del ListTile
        child: ListTile(
          title: Text(email.subject),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(email.from),
              SizedBox(height: 8.0), 
              Text(
                 email.dateTime.toString(),
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          leading: CircleAvatar(
            backgroundColor: email.read
                ? Color.fromARGB(255, 117, 177, 39)
                : Color.fromARGB(255, 199, 13, 13),
          ),
        ),
      ),
    ),
  );
}
}