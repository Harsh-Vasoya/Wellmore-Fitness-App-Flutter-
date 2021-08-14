import 'package:flutter/material.dart';
import 'setcaloriesscreen.dart';
import 'setmealsscreen.dart';
import 'viewmealsscreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text("Welcome To Diet App"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),


      body:Container(
        padding:EdgeInsets.all(10),
        child:Stack(
          children: <Widget>[
            Positioned(
              top: 00,
              left: 95,
              height:450,
              width: 250,

              child:RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.green, fontSize: 35, height: 3.5),
                  children: <TextSpan>[
                    TextSpan(text: 'Home Page \n'),
                  ],
                ),
              ),
            ),

          Positioned(
          top: 150,
          left: 60,
          height:50,
          width: 250,

          child:RaisedButton(
          child: Text('Set Calories',
          style: TextStyle(
            color: Colors.white,
            ),
            ),
            color: Colors.green,
            onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=> SetCaloriesScreen()),
        );
        },
        ),
          ),

        Positioned(
          top: 250,
          left: 60,
          height:50,
          width: 250,

    child:RaisedButton(
    child: Text('Set Meals',
    style: TextStyle(
    color: Colors.white,
    ),
    ),
    color: Colors.green,
    onPressed: (){
    Navigator.push(context,
    MaterialPageRoute(builder: (context)=> SetMealsScreen()),
    );
    },
    ),
        ),

        Positioned(
          top: 350,
          left: 60,
          height:50,
          width: 250,

          child:RaisedButton(
          child: Text('View Meals',
          style: TextStyle(
            color: Colors.white,
            ),
            ),
            color: Colors.green,
            onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=> ViewMealsScreen()),
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
