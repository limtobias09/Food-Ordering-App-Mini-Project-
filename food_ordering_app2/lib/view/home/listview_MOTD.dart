import 'package:flutter/material.dart';


class MenuOfTheDayHorizontalList extends StatefulWidget{
  @override
  State<MenuOfTheDayHorizontalList> createState() => _MenuOfTheDayHorizontalListState();
}

class _MenuOfTheDayHorizontalListState extends State<MenuOfTheDayHorizontalList> {

  Map<String, dynamic>? data;

  @override
  Widget build (BuildContext context){
    return Container(
      height: 150.0,
      child: 
        ListView(
          scrollDirection: Axis.horizontal,
          children: [
           Card(
            elevation: 10.0,
            shadowColor: Colors.grey.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
      
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(
                  context, 
                  '/3',
                  arguments: {
                    'title': 'Nasi Goreng Ikan Teri',
                    'image': 'assets/images/menuoftheday1.jpg',
                    'description':'Nasi goreng ikan teri adalah hidangan nasi goreng yang dihasilkan dari penggorengan nasi dengan tambahan ikan teri yang telah diolah terlebih dahulu. Ikan teri yang digunakan untuk hidangan ini biasanya telah dihaluskan dan dicampurkan dengan bumbu-bumbu yang khas, seperti bawang putih, bawang merah, cabai, dan kecap manis.',
                  });
              },
              child: Stack(
               children: [
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/menuoftheday1.jpg"),
                      )
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      color: Colors.black.withOpacity(0.5)
                    ),
                    child: const Text(
                      'Nasi Goreng Ikan Teri',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                  )
                  ),
               ]
              ),
            ),
           ),
           Card(
            elevation: 10.0,
            shadowColor: Colors.grey.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
      
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(
                  context, 
                  '/3',
                  arguments: {
                    'title': 'Sawi Putih Cah Bakso',
                    'image':'assets/images/menuoftheday2.jpg',
                    'description': 'Sawi putih cah bakso adalah hidangan sayuran yang terdiri dari sawi putih yang diolah dengan cara digoreng atau ditumis dengan bumbu-bumbu tertentu, lalu ditambahkan bakso sebagai tambahan protein.',
                  });
              },
              child: Stack(
               children: [
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/menuoftheday2.jpg"),
                      )
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      color: Colors.black.withOpacity(0.5)
                    ),
                    child: const Text(
                      'Sawi Putih Cah Bakso',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                  )
                  ),
               ]
              ),
            ),
           ),

           Card(
            elevation: 10.0,
            shadowColor: Colors.grey.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
      
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(
                  context, 
                  '/3',
                  arguments: {
                   'title': 'Jamur Kuping Nanas Cah Bakso',
                   'image': 'assets/images/menuoftheday3.jpg',
                   'description': 'amur kuping nanas cah bakso adalah hidangan yang terdiri dari jamur kuping dan potongan nanas yang diolah dengan cara ditumis bersama bumbu-bumbu dan ditambahkan bakso sebagai tambahan protein.',
                  });
              },
              child: Stack(
               children: [
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/menuoftheday3.jpg"),
                      )
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      color: Colors.black.withOpacity(0.5)
                    ),
                    child: const Text(
                      'Jamur Kuping Nanas Cah Bakso',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                  )
                  ),
               ]
              ),
            ),
           ),
      
           
          ],
        ),
      );
  }
}

