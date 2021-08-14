import 'package:flutter/material.dart';
import 'breakfast.dart';
import 'breakfastdata.dart';


class SetMealsScreen extends StatefulWidget {
  @override
  _SelectedState createState() {
    return _SelectedState();
  }
}

class _SelectedState extends State<SetMealsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text("Set Meals"),
      ),

      body:Container(
      padding:EdgeInsets.all(10),
      child:Stack(
      children: <Widget>[
      Positioned(
      top: 00,
      left: 10,
      height:450,
      width: 450,

      child:RichText(
      text: TextSpan(
      style: TextStyle(color: Colors.black, fontSize: 23, height: 2.5),
      children: <TextSpan>[
      TextSpan(text: 'Set Meals :- \n'),
      TextSpan(text: 'Breakfast : \n'),
      TextSpan(text: 'Post Breakfast : \n'),
      TextSpan(text: 'Lunch : \n'),
      TextSpan(text: 'Evening Snack :\n'),
        TextSpan(text: 'Dinner :'),
    ],
    ),
    ),
    ),

        Positioned(
          top: 365,
          right: 10,
          height:50,
          width: 70,

          child:RaisedButton(
            child: Text('Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Colors.green,
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=> BreakFast()),
              );
            },

          ),
        ),
      ],
      ),
    ),

    );
  }
}
