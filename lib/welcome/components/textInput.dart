export 'textInput.dart';

import 'package:flutter/material.dart';

class textInput extends StatefulWidget {
  const textInput({super.key});

  @override
  State<textInput> createState() => _textInputState();
}

class _textInputState extends State<textInput> {

  String _username = "";
  String get username { return _username;}

  @override
  Widget build(BuildContext context) {
    
    return
    TextFormField(
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(color: Color.fromRGBO(234, 158, 4, 1)),
        validator: (value){
          if(value == null || value.isEmpty){
            return "Veuillez entrer un nom d'utilisateur";
          }
          return null;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(55))
        ),
        onChanged: (value) {
          _username = value;
        }
      );
  }

}