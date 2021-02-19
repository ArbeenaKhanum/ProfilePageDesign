import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {

  String radioButtonItem = 'Content Creator';

  // Group Value for Radio Button.
  int id = 1;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(5.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              activeColor: Colors.pink.shade500,
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Content Creator';
                  id = 1;
                });
              },
            ),
            Text(
              'Content Creator',
              style: new TextStyle(fontSize: 16.0),
            ),

            Radio(
              activeColor: Colors.pink.shade500,
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Business Owner';
                  id = 2;
                });
              },
            ),
            Text(
              'Business Owner',
              style: new TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ],
    );

  }
}
