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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ldnumber = 5;
    var rdnumber = 4;
    return Center(


      child: Row(
        children: <Widget>[

          Expanded(
            child: FlatButton(
              onPressed: (){

                  ldnumber += 1;
              },
                child: Image.asset('images/dice$ldnumber.png'),
            ),
          ),

          Expanded(
            child: FlatButton(
              onPressed: (){
                if(rdnumber == 6)
                  rdnumber = 1;
                else
                  rdnumber += 1;
              },
              child: Image.asset('images/dice$rdnumber.png'),
            ),
          ),

        ],
      ),
    );
  }
}
