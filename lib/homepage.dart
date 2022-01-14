import 'dart:ui';

import 'package:animations/animations.dart';

import 'package:diet_app/mealdetailscreen.dart';
import 'package:diet_app/model/meal.dart';

import 'package:diet_app/setcaloriesscreen.dart';
import 'package:diet_app/setmealsscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as math;
import 'package:intl/intl.dart';


class HomePage extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final today = DateTime.now();


    return Scaffold(
  backgroundColor: const Color(0xFF000000),



  body: Stack(

    children: <Widget>[

      Positioned(
        top: 0,
        height: height * 0.365,
        left:0,
        right: 0,

        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            bottom: const Radius.circular(40),
        ),

    child: OpenContainer(
      closedElevation: 0,
      openElevation: 0,
      transitionType: ContainerTransitionType.fadeThrough,
      transitionDuration: const Duration(milliseconds: 500),
    openBuilder: (context, _){
    return SetCaloriesScreen();
    },
    closedBuilder: (
    context, VoidCallback openContainer
    ) {
      return GestureDetector(
        onTap: openContainer,


        child: Container(
          color: Color(0xffffffff),
          padding: const EdgeInsets.only(
            top: 30,
            left: 16,
            right: 32,
            bottom: 0,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              ListTile(
                title: Text(
                  "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMM")
                      .format(today)} ",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),),

                subtitle: Text("Hello, Harsh",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),),
                trailing: ClipOval(child: Image.asset("assets/user1.jpg")),
              ),
              SizedBox(
                height: 10,
              ),

              Row(
                children: <Widget>[

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      _MacrosProgress(
                        macros: "Protein",
                        progress: 0.7,
                        progressColor: Colors.green,
                        leftAmount: 72,
                        width: width * 0.28,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _MacrosProgress(
                        macros: "Carbs",
                        progress: 0.5,
                        progressColor: Colors.yellow,
                        leftAmount: 272,
                        width: width * 0.28,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _MacrosProgress(
                        macros: "Fats",
                        progress: 0.3,
                        progressColor: Colors.red,
                        leftAmount: 52,
                        width: width * 0.28,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 11.6725,
                  ),
                  _RadialProgress(
                    width: width * 0.4,
                    height: width * 0.4,
                    progress: 0.7,
                  ),
                ],
              ),

            ],
          ),
        ),
      );
    },

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
                  height: height * 0.7,
                  color: const Color(0xffffffff),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Row(
                        children:[
                          Padding(
                          padding: const EdgeInsets.only(
                            bottom: 20,
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
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20,
                          top: 20,
                          right: 0,
                          left: 100,
                        ),

                        child: OpenContainer(
                          closedElevation: 0,
                          openElevation: 0,
                          transitionType: ContainerTransitionType.fadeThrough,
                          transitionDuration: const Duration(milliseconds: 500),
                        openBuilder: (context, _){
                          return SetMealsScreen();
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

                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,

                          child: Column(

                            children: <Widget>[
                              SizedBox(
                                width: 16,
                                height: 06,
                              ),
                              for(int i = 0; i < meals.length; i++)
                                _MealCard(meal: meals[i])
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


class _MacrosProgress extends StatelessWidget{
  final String macros;
  final int leftAmount;
  final double progress, width;
  final Color progressColor;

  const _MacrosProgress({Key? key, required this.macros, required this.leftAmount, required this.progress, required this.progressColor, required this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  return Column(
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

class _RadialProgress extends StatelessWidget{

  final double  height, width, progress;

  const _RadialProgress({Key? key, required this.height, required this.width, required this.progress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RadialPainter(progress: 0.7,),
        child: Container(
          height: height,
          width: width,

          child: Center(

            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "1731",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF200087),
                    ),
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(
                    text: "kcal left",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF200087),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}


class _RadialPainter extends CustomPainter{
  final double progress;

  _RadialPainter({required this.progress});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 10
        ..color = Color(0xFF200087)
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double relativeProgress = 360 * progress;

   canvas.drawArc(Rect.fromCircle(
       center: center,
       radius: size.width / 2),
     math.radians(-90),
     math.radians(-relativeProgress),
     false ,
     paint,
   );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}



class _MealCard extends StatelessWidget{

  final Meal meal;

  const _MealCard({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(


      margin: const EdgeInsets.only(right: 16, bottom: 10, left: 20),

        child: OpenContainer(
        closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
    transitionDuration: const Duration(milliseconds: 500),
    openBuilder: (context, _) {
    return MealDetailScreen(
    meal: meal,
    );
    },
    closedBuilder: (context, openContainer) {
      return GestureDetector(
        onTap: openContainer,

        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          elevation: 4,

          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[

              Flexible(
                fit: FlexFit.loose,

                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    meal.imagePath,
                    width: 160,
                    height: 113,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),


        Flexible(
          fit: FlexFit.loose,

          child: Padding(
            padding: const EdgeInsets.only(left: 8),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(meal.mealTime, style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.blueGrey),),
                Text(meal.name, style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black87),),
                Text("${meal.kiloCaloriesBurnt} kcal", style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.black54),),
                Row(
                  children: <Widget>[
                    Icon(Icons.access_time, size: 15, color: Colors.black26,),
                    SizedBox(width: 4,),
                    Text("${meal.timeTaken} min", style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black87),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
            ],
          ),
        ),
      );
    },
        ),
    );

  }
}




