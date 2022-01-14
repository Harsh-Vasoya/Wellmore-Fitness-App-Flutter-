
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class DietAdd extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DietAdd> {

  int _value = 1;


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF000000),

      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            height: height * 0.9,
            left: 0,
            right: 0,

           child: ClipRRect(
            borderRadius: const BorderRadius.vertical(
              bottom: const Radius.circular(40),
            ),

         child : Container(
               color: Color(0xffffffff),
           padding: const EdgeInsets.only(
             top: 40,
             left: 03,
             right: 05,
             bottom: 10,
           ),




                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.only(top: 20.0 , left: 0),
                          child: Text("Add Your Meal.", style: TextStyle
                            (color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.w400
                          ),),

                          ),

                        SizedBox(
                          height: 40,
                        ),




                        ListTile( title:Text(
                          ("Time of your meal :"),
                          style: const TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

      trailing: DropdownButton(
          value: _value,
          elevation: 10,
          items: [
            DropdownMenuItem(
              child: Text("Breakfast"),
              value: 1,
            ),
            DropdownMenuItem(
              child: Text("Post Breakfast"),
              value: 2,
            ),
            DropdownMenuItem(
              child: Text("Lunch"),
              value: 3,
            ),
            DropdownMenuItem(
              child: Text("Snack"),
              value: 4,
            ),
            DropdownMenuItem(
              child: Text("Dinner"),
              value: 5,
            )
          ],
          onChanged: (int? value)  => setState(() {
             _value =  value!;
            }),


          hint:Text("Select item")
      ),

                        ),
                        SizedBox(
                          height: 20,
                        ),


              ListTile( title:Text(
               ("Name of your meal :"),
               style: const TextStyle(
                 color: Color(0xFF000000),
                 fontSize: 20,
                 fontWeight: FontWeight.w400,
               ),
             ),
             ),

                 Padding(
                   padding: const EdgeInsets.only(
                     right: 07,
                     left: 07,
                   ),
                   child: TextField(
                       obscureText: false,
                       decoration: InputDecoration(
                         border: OutlineInputBorder(),
                         fillColor: Colors.black,
                         labelText: 'Name',
                       ),
               ),
                 ),
                        SizedBox(
                          height: 20,
                        ),


                        ListTile( title:Text(
                          ("Protein in grams :"),
                          style: const TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                            right: 07,
                            left: 07,
                          ),
                          child: TextField(
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              fillColor: Colors.black,
                              labelText: 'Calories',
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),


                        ListTile( title:Text(
                          ("Carbs in grams :"),
                          style: const TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                            right: 07,
                            left: 07,
                          ),
                          child: TextField(
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              fillColor: Colors.black,
                              labelText: 'Calories',
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        ListTile( title:Text(
                          ("Fats in grams :"),
                          style: const TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                            right: 07,
                            left: 07,
                          ),
                          child: TextField(
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              fillColor: Colors.black,
                              labelText: 'Calories',
                            ),
                          ),
                        ),


                        SizedBox(
                          height: 20,
                        ),

                        ListTile( title:Text(
                          ("Calories (kcal) :"),
                          style: const TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                            right: 07,
                            left: 07,
                          ),
                          child: TextField(
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              fillColor: Colors.black,
                              labelText: 'Calories',
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),


                        ListTile( title:Text(
                          ("Preparation time (min) :"),
                          style: const TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                            right: 07,
                            left: 07,
                          ),
                          child: TextField(
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              fillColor: Colors.black,
                              labelText: 'Time',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),


                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 20,
                                top: 20,
                                right: 20,
                                left: 20,
                              ),
                          child: Text(
                            ("Upload Image :"),
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
                            left: 20,
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(90),

                            ),
                        child: ElevatedButton.icon(
                           label: Text('Choose', style: TextStyle(
                             color: Colors.black,
                             fontSize: 20,
                           ),),
                           icon: Icon(Icons.add_a_photo_outlined, color: Colors.black,),
                           onPressed: () {
                             print( "Image");
                           },
                           style: ButtonStyle(
                             backgroundColor: MaterialStateProperty.all(Colors.white),
                             fixedSize: MaterialStateProperty.all(Size(150, 50)),
                             elevation: MaterialStateProperty.all(20),
                             overlayColor: MaterialStateProperty.all(Colors.black26),
                           ),
                         ),
                            ),
                          ),
                          ],
                        ),
                            SizedBox(
                              height: 20,
                            ),


                            ListTile( title:Text(
                              ("Ingredients :"),
                              style: const TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(
                                right: 07,
                                left: 07,
                              ),
                              child: TextFormField(
                                obscureText: false,
                              maxLines: 15,
                                maxLength: 300,
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  fillColor: Colors.black,

                                ),
                              ),
                            ),


                        SizedBox(
                          height: 20,
                        ),


                        ListTile( title:Text(
                          ("Preparation :"),
                          style: const TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                            right: 07,
                            left: 07,
                          ),
                          child: TextFormField(
                            obscureText: false,
                            maxLines: 30,
                            maxLength: 500,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              fillColor: Colors.black,

                            ),
                          ),
                        ),


           Padding(
             padding: const EdgeInsets.only(
               right: 07,
               left: 07,
             ),
             child: ClipRRect(
               borderRadius: const BorderRadius.all(
                 Radius.circular(90),
               ),
                         child: ElevatedButton.icon(
                              label: Text('Add Your Meal', style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),),
                              icon: Icon(Icons.add_task_rounded, color: Colors.black,),
                              onPressed: () {
                                print("Add Meal");
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.white),
                                fixedSize: MaterialStateProperty.all(Size(220, 50)),
                                elevation: MaterialStateProperty.all(20),
                                overlayColor: MaterialStateProperty.all(Colors.black26),
                              ),
                            ),
             ),
           ),
             ],
                ),
                  ),
             ),


                  ),
                ),


    ],
      ),

    );
  }
}


