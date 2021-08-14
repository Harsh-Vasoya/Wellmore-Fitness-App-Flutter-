import 'package:flutter/material.dart';

class BreakfastData {
  String Name='';
  String Protein='';
  String Carbs='';
  String Fats='';
  String Calories='';

  BreakfastData({required this.Name, required this.Protein,required this.Carbs,required this.Fats, required this.Calories});

  static List<BreakfastData> getBreakfastData() {
    return <BreakfastData>[
      BreakfastData(Name: "Black Coffee", Protein: "0", Carbs: "0", Fats: "0", Calories: "2"),
      BreakfastData(Name: "Black Coffee", Protein: "1", Carbs: "1", Fats: "1", Calories: "2"),
    ];
  }
}