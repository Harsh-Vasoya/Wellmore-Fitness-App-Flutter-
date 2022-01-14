import 'dart:ffi';

import 'package:animations/animations.dart';
import 'package:diet_app/breakfast.dart';
import 'package:diet_app/dinner.dart';
import 'package:diet_app/lunch.dart';
import 'package:diet_app/model/meal.dart';
import 'package:diet_app/post%20breakfast.dart';
import 'package:diet_app/snack.dart';
import 'package:flutter/material.dart';

class SetMealsScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Set Your Meals", style: TextStyle(
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
    height: height * 0.3,
    left: 0,
    right: 0,

    child: ClipRRect(
    borderRadius: const BorderRadius.vertical(
    bottom: const Radius.circular(40),
    ),


    child: Container(
    color: Color(0xffffffff),
    padding: const EdgeInsets.only(
    top: 20,
    left: 16,
    right: 16,
    bottom: 0,
    ),

    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[

      Text("1718 of 2568 kcal.", style: TextStyle
        (color: Colors.black,
          fontSize: 35,
          fontWeight: FontWeight.w400
      ),),

      SizedBox(
        height: 10,
      ),
      _CalorieProgress(
        progress: 0.8,
        progressColor: Colors.blue,
        leftAmount: 850,
        width: width * 0.7,
      ),
      SizedBox(
        height: 20,
      ),

      _MacrosProgress(
        macros: "Protein",
        progress: 0.7,
        progressColor: Colors.green,
        leftAmount: 72,
        width: width * 0.7,
      ),
      SizedBox(
        height: 05,
      ),
      _MacrosProgress(
        macros: "Carbs",
        progress: 0.5,
        progressColor: Colors.yellow,
        leftAmount: 272,
        width: width * 0.7,
      ),
      SizedBox(
        height: 05,
      ),
      _MacrosProgress(
        macros: "Fats",
        progress: 0.3,
        progressColor: Colors.red,
        leftAmount: 52,
        width: width * 0.7,
      ),
    ],
    ),
    ),
    ),
    ),

      Positioned(
          top: 335,
          bottom: 25,
          left:0,
          right: 0,
          child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
          bottom: const Radius.circular(40),
      top:  const Radius.circular(40),
    ),


    child: Container(
    height: height * 1,
    color: const Color(0xffffffff),

    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      Padding(
        padding: const EdgeInsets.only(
          bottom: 0,
          top: 20,
          right: 20,
          left: 20,
        ),
        child: Text(
          ("Set Meals For Today"),
          style: const TextStyle(
            color: Color(0xFF000000),
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),

            SizedBox(
              height: 15,
            ),

            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,

                child: Column(
                  children: <Widget>[

                    Row(
                children: <Widget>[


      Padding(
      padding: const EdgeInsets.only(
      bottom: 0,
      top: 0,
      right: 20,
      left: 10,
      ),
      child: Text(
      ("Breakfast."),
      style: const TextStyle(
      color: Color(0xFF000000),
      fontSize: 30,
      fontWeight: FontWeight.w400,
      ),
      ),
      ),

        Padding(
          padding: const EdgeInsets.only(
            bottom: 0,
            top: 0,
            right: 0,
            left: 179,
          ),
              child: OpenContainer(
                closedElevation: 0,
                openElevation: 0,
                transitionType: ContainerTransitionType.fadeThrough,
                transitionDuration: const Duration(milliseconds: 500),
                openBuilder: (context, _){
                  return Breakfast();
                },
                closedBuilder: (
                    context, VoidCallback openContainer
                    ) {
                  return GestureDetector(
                    onTap: openContainer,
                    child: Icon(
                      Icons.add_circle_outline_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                  );
                },
              ),
            ),
        ],
                    ),


                  ListTile( title:Text(
                      ("Fruit Granola"),
                      style: const TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                trailing: Text(
                    ("212 kcal."),
                    style: const TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),



      SizedBox(
        height: 10,
      ),
                    Row(
                      children: <Widget>[


                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 0,
                                top: 0,
                                right: 20,
                                left: 10,
                              ),
                              child: Text(
                                ("Post Breakfast."),
                                style: const TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 0,
                            top: 08,
                            right: 0,
                            left: 110,
                          ),

                          child: OpenContainer(
                            closedElevation: 0,
                            openElevation: 0,
                            transitionType: ContainerTransitionType.fadeThrough,
                            transitionDuration: const Duration(milliseconds: 500),
                            openBuilder: (context, _){
                              return PostBreakfast();
                            },
                            closedBuilder: (
                                context, VoidCallback openContainer
                                ) {
                              return GestureDetector(
                                onTap: openContainer,
                                child: Icon(
                                  Icons.add_circle_outline_rounded,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              );
                            },
                          ),
                        ),



                          ],
                        ),


                    ListTile(title: Text(
                        ("Banana"),
                        style: const TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),


                               trailing: Text(
                                ("89 kcal."),
                                style: const TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),



                    SizedBox(
        height: 10,
      ),
                    Row(
                      children: <Widget>[


                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 0,
                                top: 0,
                                right: 20,
                                left: 10,
                              ),
                              child: Text(
                                ("Lunch."),
                                style: const TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),

                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 0,
                            top: 08,
                            right: 0,
                            left: 225,
                          ),

                          child: OpenContainer(
                            closedElevation: 0,
                            openElevation: 0,
                            transitionType: ContainerTransitionType.fadeThrough,
                            transitionDuration: const Duration(milliseconds: 500),
                            openBuilder: (context, _){
                              return Lunch();
                            },
                            closedBuilder: (
                                context, VoidCallback openContainer
                                ) {
                              return GestureDetector(
                                onTap: openContainer,
                                child: Icon(
                                  Icons.add_circle_outline_rounded,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              );
                            },
                          ),
                        ),

],
                    ),





                       ListTile( title: Text(
                            ("Sandwich"),
                            style: const TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),


                         trailing: Text(
                                ("414 kcal."),
                                style: const TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),



                    SizedBox(
        height: 10,
      ),
                    Row(
                      children: <Widget>[


                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 0,
                                top: 0,
                                right: 20,
                                left: 10,
                              ),
                              child: Text(
                                ("Snack."),
                                style: const TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),

                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 0,
                            top: 08,
                            right: 0,
                            left: 225,
                          ),

                          child: OpenContainer(
                            closedElevation: 0,
                            openElevation: 0,
                            transitionType: ContainerTransitionType.fadeThrough,
                            transitionDuration: const Duration(milliseconds: 500),
                            openBuilder: (context, _){
                              return Snack();
                            },
                            closedBuilder: (
                                context, VoidCallback openContainer
                                ) {
                              return GestureDetector(
                                onTap: openContainer,
                                child: Icon(
                                  Icons.add_circle_outline_rounded,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              );
                            },
                          ),
                        ),
],
                    ),

                        ListTile(title: Text(
                                ("Keto Snack"),
                                style: const TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),


                            trailing: Text(
                                ("145 kcal."),
                                style: const TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),



                    SizedBox(
        height: 10,
      ),
                    Row(
                      children: <Widget>[


                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 0,
                                top: 0,
                                right: 20,
                                left: 10,
                              ),
                              child: Text(
                                ("Dinner."),
                                style: const TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),

                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 0,
                            top: 08,
                            right: 0,
                            left: 222,
                          ),

                          child: OpenContainer(
                            closedElevation: 0,
                            openElevation: 0,
                            transitionType: ContainerTransitionType.fadeThrough,
                            transitionDuration: const Duration(milliseconds: 500),
                            openBuilder: (context, _){
                              return Dinner();
                            },
                            closedBuilder: (
                                context, VoidCallback openContainer
                                ) {
                              return GestureDetector(
                                onTap: openContainer,
                                child: Icon(
                                  Icons.add_circle_outline_rounded,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              );
                            },
                          ),
                        ),


                          ],
                        ),

                           ListTile(title: Text(
                                ("Pesto Pasta"),
                                style: const TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                             ),

                            trailing: Text(
                                ("600 kcal."),
                                style: const TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),

                    ),
            ),
                  ],
                ),
              ),
            ),
      ),
],
    ),

    );
  }
}

class _CalorieProgress extends StatelessWidget{
  final int leftAmount;
  final double progress, width;
  final Color progressColor;

  const _CalorieProgress({Key? key, required this.leftAmount, required this.progress, required this.progressColor, required this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 10,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.black12,
                  ),
                ),
                Container(
                  height: 10,
                  width: width * progress,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: progressColor,
                  ),
                ),

              ],
            ),

            SizedBox(width: 0,),
            Text("${leftAmount}g left.", style: TextStyle(fontSize: 16),),
          ],
        ),
      ],
    );
  }

}


class _MacrosProgress extends StatelessWidget{
  final String macros;
  final int leftAmount;
  final double progress, width;
  final Color progressColor;

  const _MacrosProgress({Key? key, required this.macros, required this.leftAmount, required this.progress, required this.progressColor, required this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(macros.toUpperCase(), style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,

        ),),

        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 10,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.black12,
                  ),
                ),
                Container(
                  height: 10,
                  width: width * progress,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: progressColor,
                  ),
                ),

              ],
            ),

            SizedBox(width: 10,),
            Text("${leftAmount}g left"),
          ],
        ),
      ],
    );
  }

}
