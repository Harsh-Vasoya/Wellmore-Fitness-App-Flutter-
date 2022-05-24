
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SetCaloriesScreen extends StatefulWidget{
  State<StatefulWidget> createState() => _RangeWidget();
}

class _RangeWidget extends State<SetCaloriesScreen> {
  RangeValues _currentRangeValues1 = const RangeValues(30, 120);
  RangeValues _currentRangeValues2 = const RangeValues(100, 400);
  RangeValues _currentRangeValues3 = const RangeValues(30, 100);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Set Your Calories", style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w400,
        ),),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),

      body: Stack(
        children: <Widget>[

          Positioned(
            top: 0,
            height: height * 0.65,
            left: 0,
            right: 0,

            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: const Radius.circular(40),
              ),


              child: Container(
                color: Color(0xffffffff),
                padding: const EdgeInsets.only(
                  top: 60,
                  left: 16,
                  right: 16,
                  bottom: 0,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[


                    Row(
                      children: <Widget>[

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text("Protein(g).", style: TextStyle
                              (color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w300
                            ),),
                            SizedBox(
                              height: 30,
                            ),
                            Text("Carbs(g).", style: TextStyle
                              (color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w300
                            ),),
                            SizedBox(
                              height: 30,
                            ),
                            Text("Fats(g).", style: TextStyle
                              (color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w300
                            ),),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[

                            RangeSlider(
                              values: _currentRangeValues1,
                              min: 0,
                              max: 150,
                              divisions: 150,
                              activeColor: Color(0xFF1B1D86),
                              inactiveColor: Colors.grey,
                              labels: RangeLabels(
                                _currentRangeValues1.start.round().toString(),
                                _currentRangeValues1.end.round().toString(),
                              ),
                              onChanged: (RangeValues values) {
                                setState(() {
                                  _currentRangeValues1 = values;
                                });
                              },
                            ),

                            SizedBox(
                              height: 18,
                            ),
                            RangeSlider(
                              values: _currentRangeValues2,
                              min: 0,
                              max: 500,
                              divisions: 500,
                              activeColor: Color(0xFF1B1D86),
                              inactiveColor: Colors.grey,
                              labels: RangeLabels(
                                _currentRangeValues2.start.round().toString(),
                                _currentRangeValues2.end.round().toString(),

                              ),
                              onChanged: (RangeValues values) {
                                setState(() {
                                  _currentRangeValues2 = values;
                                });
                              },
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            RangeSlider(
                              values: _currentRangeValues3,
                              min: 0,
                              max: 150,
                              divisions: 150,
                              activeColor: Color(0xFF1B1D86),
                              inactiveColor: Colors.grey,
                              labels: RangeLabels(
                                _currentRangeValues3.start.round().toString(),
                                _currentRangeValues3.end.round().toString(),

                              ),
                              onChanged: (RangeValues values) {
                                setState(() {
                                  _currentRangeValues3 = values;
                                });
                              },
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),


                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[

                          Padding(padding: const EdgeInsets.only(
                            bottom: 20,
                            top: 70,
                            right: 50,
                            left: 0,
                          ),
                            child: Text("Total Calories:", style: TextStyle
                              (color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.w300,
                            ),),
                          ),
                          SizedBox(
                            height: 05,
                          ),
                          Text("2567 kcal.", style: TextStyle
                            (color: Color(0xFF15156F),
                              fontSize: 75,
                              fontWeight: FontWeight.w400
                          ),),

                        ],
                      ),

                    ),


                  ],
                ),

              ),
            ),
          ),

          Positioned(
            top: 520,

            left: 35,
            right: 35,

            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(90),
              ),
              child: ElevatedButton.icon(
                label: Text('Calculate Total Calories', style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),),
                icon: Icon(Icons.calculate_outlined, color: Colors.black,),
                onPressed: () {
                  print(" Calculate Button ");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  fixedSize: MaterialStateProperty.all(Size(50, 50)),
                  elevation: MaterialStateProperty.all(0.0),
                  overlayColor: MaterialStateProperty.all(Colors.black26),
                ),
              ),
            ),
          ),

          Positioned(
            top: 620,
            left: 35,
            right: 35,

            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(90),
              ),
              child: ElevatedButton.icon(
                label: Text('Set Your Goal', style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),),
                icon: Icon(Icons.add_task_rounded, color: Colors.black,),
                onPressed: () {
                  _showToast();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  fixedSize: MaterialStateProperty.all(Size(50, 50)),
                  overlayColor: MaterialStateProperty.all(Colors.black26),
                ),
              ),
            ),
          ),

        ],


      ),

    );
  }

  _showToast() {
    Widget toast = Container(
      padding: const EdgeInsets.only(top: 10, left: 40, right: 40, bottom: 10,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.white,
      ),

      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check),
          SizedBox(
            width: 12.0,
          ),
          Text("Goal Updated",
          ),
        ],
      ),
    );


  }
}