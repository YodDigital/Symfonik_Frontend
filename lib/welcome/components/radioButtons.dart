export 'radioButtons.dart';

import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';


class radioButtons extends StatefulWidget {
  const radioButtons({super.key});

  @override
  State<radioButtons> createState() => _radioButtonsState();
}

class _radioButtonsState extends State<radioButtons> {
  
  static const _genders = ["Homme", "Femme"];

  String _gender = "";
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          for(int i = 0; i < _genders.length; i++) Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: <Widget>[
                Text(_genders[i], style: TextStyle(color: Styles.orangeColor, fontWeight: FontWeight.bold, fontSize: 12)),
                Radio(value: _genders[i], groupValue: _gender, onChanged: (value)=>{onSelect(_genders[i])}, activeColor: Color.fromRGBO(234, 158, 4, 1),)
              ],
            )
          )
        ],
      )
    );
  }

  void onSelect(String g){
    setState(() {
      _gender = g;
    });
  }
}