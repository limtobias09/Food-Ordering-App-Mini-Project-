import 'package:flutter/material.dart';

class MenuOfTheDayHorizontalList extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Container(
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
         Card(
          elevation: 10.0,
          shadowColor: Colors.grey.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)
          ),

          child: Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/menuoftheday_1.jpg"),
                )
            ),
          ),
         ),

         Card(
          elevation: 10.0,
          shadowColor: Colors.grey.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)
          ),

          child: Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/menuoftheday_1.jpg"),
                )
            ),
          ),
         ),
         
         Card(
          elevation: 10.0,
          shadowColor: Colors.grey.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)
          ),

          child: Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/menuoftheday_1.jpg"),
                )
            ),
          ),
         ),
        ],
      ),
    );
  }
}