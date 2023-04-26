import 'package:flutter/material.dart';

class BeveragesHorizontalList extends StatefulWidget{
  @override
  State<BeveragesHorizontalList> createState() => _BeveragesHorizontalListState();
}

class _BeveragesHorizontalListState extends State<BeveragesHorizontalList> {
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
      
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(
                  context, 
                  '/3',
                  arguments: {
                    'title': 'Teh Melati',
                    'image': 'assets/images/beverages1.jpg',
                    'description': 'Teh melati adalah minuman yang terbuat dari campuran daun teh hijau dengan bunga melati segar atau kering. Teh melati sangat populer di Indonesia dan biasanya disajikan dalam acara-acara formal seperti pernikahan atau acara resmi lainnya.',
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
                      image: AssetImage("assets/images/beverages1.jpg"),
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
                      'Teh Melati',
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
                    'title': 'Teh Jahe',
                    'image': 'assets/images/beverages2.jpg',
                    'description': 'Teh jahe adalah minuman tradisional yang terbuat dari jahe segar yang direbus bersama air dan gula, kemudian disajikan dalam keadaan panas atau dingin. Teh jahe sangat populer di Indonesia dan Asia Tenggara, karena khasiat jahe yang dipercaya dapat membantu menghangatkan tubuh dan meningkatkan daya tahan tubuh.',
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
                      image: AssetImage("assets/images/beverages2.jpg"),
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
                      'Teh Jahe',
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
                    'title': 'Es Cincau Jeli', 
                    'image': 'assets/images/beverages3.jpg',
                    'description': 'Es cincau jeli adalah minuman segar yang terbuat dari cincau hitam dan agar-agar, yang dicampur dengan air gula dan air kelapa muda atau santan, kemudian disajikan dalam keadaan dingin. Es cincau jeli sangat populer di Indonesia, khususnya pada saat cuaca panas.',
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
                      image: AssetImage("assets/images/beverages3.jpg"),
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
                      'Es Cincau Jeli',
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