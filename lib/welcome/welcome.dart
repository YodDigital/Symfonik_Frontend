export 'welcome.dart';

import 'package:flutter/material.dart';

import 'components/textInput.dart';
import 'components/radioButtons.dart';
import 'components/chips.dart';

import '../utils/app_styles.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {

  Widget textIn = textInput();
  Widget radios = radioButtons();
  Widget chip = chips();

  String username = "";
  String gender = "";
  List<String> favCategories = [];
  bool _isValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(child: Image.asset("assets/PNGs/image.png"), width: 70, height: 70, margin: EdgeInsets.all(20),),
              Container(child: Text("Bienvenue sur")),
              Container(
                // child: Text("Symfonik", style: TextStyle(fontFamily: 'mamakilo')), margin: EdgeInsets.only(top: 10, bottom: 20),),
                margin: EdgeInsets.only(top: 0, bottom: 20),
                padding: EdgeInsets.all(0),
                child: Text.rich(
                  style: TextStyle(fontFamily: 'mamakilo', fontSize: 40),
                  TextSpan(
                    text: 'Symf',
                    style: TextStyle(color: Styles.orangeColor),
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'onik',
                        style: TextStyle(color: Styles.yellowColor)
                      )
                    ]
                  )
              )),
              Form(
                onChanged: () {
                  setState(() {
                    _isValid = true;
                  });
                },
                child: Column(
                  children: <Widget>[
                    Container(child: Text("Quel est votre nom d'utilisateur ?", style: TextStyle(fontWeight: FontWeight.bold))),
                    Container(child: textInput(), width: 225, height: 50, margin: EdgeInsets.only(top: 10, bottom: 25, left: 25, right: 25)),
                    Container(child: Text("Votre genre", style: TextStyle(fontWeight: FontWeight.bold))),
                    Container(child: radioButtons(), margin:EdgeInsets.only(top: 10, bottom: 20)),
                    Container(child: Text("Quels sont vos goûts musicaux ?", style: TextStyle(fontWeight: FontWeight.bold))),
                    Container(child: chips(), margin: EdgeInsets.only(top: 15, bottom: 40, left: 20, right: 20)),
                     
                    // Container(child: MaterialButton(onPressed: null, child: Text("C'est parti !"), color: Color.fromRGBO(56, 14, 1, 1), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)), textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),))
                    Container(child: MaterialButton(onPressed: (){}, child: Text("C'est parti !",), color: Color.fromRGBO(56, 14, 1, 1), textColor: Colors.white,disabledTextColor: Color.fromRGBO(56, 14, 1, 0.7), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)), padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),))
                  ]
                )
              )
            ],
          )
        )
    );
  }
}

