import 'package:flutter/material.dart';
import 'listviewMOTD.dart';
import 'listviewBreakfast.dart';
import 'listviewBeverages.dart';

//HomeScreen adalah untuk menggambarkan halaman utama (home) dalam aplikasi
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
             const SizedBox(height: 20),
    
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  'Menu Of The Day:',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  ),
                ),
              ),
    
             const SizedBox(),
            
             MenuOfTheDayHorizontalList(),
    
             const SizedBox(height: 30),
    
             const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  'Breakfast:',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  ),
                ),
              ),
    
              BrunchHorizontalList(),
    
              const SizedBox(height: 30),
    
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  'Beverages:',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  ),
                ),
              ),
    
              BeveragesHorizontalList(),
    
    
          ]
          ),
      ),
    );
  }
}