import 'package:flutter/material.dart';

class EditTextIcon extends StatelessWidget {
  final String editName;
  final IconData iconData;
  const EditTextIcon({@required this.editName, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin : EdgeInsets.symmetric(vertical: 5.0, horizontal: 24.0),
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: Icon(iconData),
            fillColor: Color(0xFF350250),
            hintText: editName,
            hintStyle: TextStyle(
              color: Color(0xFF626063),
              fontSize: 14,
            ),
            labelText: editName,
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
