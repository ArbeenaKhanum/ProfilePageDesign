import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'edit_text_with_icon.dart';
import 'edit_text.dart';
import 'radio_button.dart';

class ProfilePage extends StatefulWidget{
  @override
  _ProfilePageState createState() => _ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xFFDDE3FA),
        appBar: AppBar(
           backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios,
          color: Colors.pink.shade500,),
          centerTitle: true,
          title: Text('Saved',
            style: TextStyle(
              color: Colors.pink.shade500,
              fontSize: 18.0,
              fontWeight: FontWeight.bold
            ),
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
          children: [
           Center(
             child: CircleAvatar(
               maxRadius: 40,
               backgroundImage: AssetImage('images/profile_icon.png'
        ),),
           ),

            EditText(hintName: 'Full Name',),
            EditText(hintName: 'Email',),
            EditText(hintName: 'Phone Number',),
            EditTextIcon(editName: 'Location', iconData: Icons.place,),
            EditTextIcon(editName: 'Profession', iconData: Icons.account_circle_rounded,),
            EditText(hintName: 'Social Link'),

             Container(
               child: RadioButton(),
             ),

            Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  minLines: 5,
                  maxLines: 5,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: 'Write a brief bio',
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        ),
      );
  }
}