import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldnumber = 1;
  int rdnumber = 1;
  @override
  Widget build(BuildContext context) {

  return Center(
    child: Row(
    children: <Widget>[
      Expanded(
        child: FlatButton(
        onPressed: (){
        setState(() {
          if(ldnumber == 6)
            ldnumber = 1;
          else
            ldnumber += 1;
        });

        },
        child: Image.asset('images/dice$ldnumber.png'),
        ),
      ),
      Expanded(
        child: FlatButton(
        onPressed: (){
          setState(() {
            if(rdnumber == 6)
              rdnumber = 1;
            else
              rdnumber += 1;
          });

        },
        child: Image.asset('images/dice$rdnumber.png'),
        ),
      ),

    ],
    ),
  );
  }
}

