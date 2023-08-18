export 'chips.dart';

import 'package:flutter/material.dart';
import 'package:symfonik_frontend/utils/app_styles.dart';


class chips extends StatefulWidget {
  const chips({super.key});

  @override
  State<chips> createState() => _chipsState();
}

class _chipsState extends State<chips> {

  static const _categories = ["Rap", "Jazz", "R&B", "Afrobeat", "Classiques", "Soul", "Hip-hop", "Autres"];
  List<String> _selected = [];
  @override
  Widget build(BuildContext context) {
    
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      spacing: 10,
      runSpacing: 10,
      children: _categories.map((category) {
        return ChoiceChip(
              backgroundColor: Color.fromRGBO(0, 0, 0, 0),
              surfaceTintColor: Color.fromRGBO(0, 0, 0, 0),
              label: Text(category, style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5))),
              labelPadding: EdgeInsets.symmetric(horizontal: 20),
              selected: (_selected.contains(category)),
              selectedColor: Color.fromRGBO(234, 158, 4, 0.3),
              // selectedBorderColor: Colors.blue,
              onSelected: (v) {
                setState(() {
                  if(v == true) _selected.add(category);
                  else _selected.remove(category);
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(55),
                side: BorderSide(style: BorderStyle.solid, width: 1.0, color: Color.fromRGBO(0, 0, 0, 0.2),
              )));
      }).toList(),
    );
  }

  void onSelect(bool v, String val){
    setState(() {
      
    });
  }
}