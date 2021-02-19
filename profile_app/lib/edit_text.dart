import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  final String hintName;
  const EditText({@required this.hintName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin : EdgeInsets.symmetric(vertical: 5.0, horizontal: 24.0),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Color(0xFF350250),
            hintText: hintName,
            hintStyle: TextStyle(
              color: Color(0xFF626063),
              fontSize: 14,
            ),
            labelText: hintName,
            labelStyle: TextStyle(
                fontSize: 15,
                color: Colors.purple.shade900,
                fontWeight: FontWeight.bold
            )
        ),
      ),
    );
  }
}