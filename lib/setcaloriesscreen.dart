
import 'package:flutter/material.dart';

class SetCaloriesScreen extends StatefulWidget {

  @override
  _State createState() => _State();
  }

  class _State extends State<SetCaloriesScreen>{
  TextEditingController p= new TextEditingController();
  TextEditingController c= new TextEditingController();
  TextEditingController f= new TextEditingController();
  String tc='0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar (
    title: Text("Set Calories"),
    ),

      body:Container(
          padding:EdgeInsets.all(10),
          child:Stack(
              children: <Widget>[
              Positioned(
              top: 00,
              left: 10,
              height:450,
              width: 250,

        child:RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 23, height: 3.5),
            children: <TextSpan>[
              TextSpan(text: 'Set Nutrients Values :- \n'),
              TextSpan(text: 'Protiens (gm): \n'),
              TextSpan(text: 'Carbs (gm): \n'),
              TextSpan(text: 'Fats (gm): \n'),
              TextSpan(text: 'Total Calories :'),
            ],
          ),
        ),
          ),
      
    Positioned(
    top: 105,
    left: 200,
    height:250,
    width: 150,

        child:TextField(
    controller: p,
        decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter Value'

    ),
    ),
    ),

        Positioned(
          top: 188,
          left: 200,
          height:250,
          width: 150,

          child:TextField(
    controller: c,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Value'

            ),
          ),
        ),

                Positioned(
                  top: 270,
                  left: 200,
                  height:250,
                  width: 150,

                  child:TextField(
    controller: f,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Value'

                    ),
                  ),
                ),


                Positioned(
                  top: 450,
                  left: 60,
                  height:50,
                  width: 250,

                  child:RaisedButton(
                    child: Text('Calculate Calories',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.green,
                    onPressed: () {
                      setState(() {
                        int sum= int.parse(p.text)*4 + int.parse(c.text)*4+
                            int.parse(f.text)*9;
                        tc=sum.toString();
                      });
                    },
                  ),
                ),

        Positioned(
          top: 367,
          left: 200,
          height:250,
          width: 250,
         child:
        new Text(tc+ " Calories",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,

                    ),
                  ),
        ),
        ],
                ),
    ),
    );
 }
}
