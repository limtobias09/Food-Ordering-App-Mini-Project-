import 'package:flutter/material.dart';

class BreakfastHorizontalList extends StatefulWidget{
  @override
  State<BreakfastHorizontalList> createState() => _BreakfastHorizontalListState();
}

class _BreakfastHorizontalListState extends State<BreakfastHorizontalList> {
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
                    'title': 'Dimsum Goreng',
                    'image': 'assets/images/breakfast1.jpg',
                    'description': 'Dimsum goreng adalah hidangan yang terdiri dari dimsum yang telah dikukus terlebih dahulu, kemudian digoreng dengan cara yang tepat sehingga menjadi krispi di luar dan lembut di dalam. Hidangan ini biasanya disajikan dengan saus cabai atau saus tomat sebagai pendamping.',
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
                      image: AssetImage("assets/images/breakfast1.jpg"),
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
                      'Dimsum Goreng',
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
                    'title': 'Siomay',
                    'image': 'assets/images/breakfast2.jpg',
                    'description': 'Siomay adalah hidangan khas Tionghoa yang terdiri dari campuran daging ikan atau udang yang dihancurkan dan dicampur dengan tepung tapioka dan bumbu-bumbu, kemudian dibentuk seperti bola kecil dan dikukus hingga matang. Hidangan ini biasanya disajikan dengan saus kacang dan bawang goreng sebagai pelengkap.',
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
                      image: AssetImage("assets/images/breakfast2.jpg"),
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
                      'Siomay',
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
                    'title': 'Bakpao',
                    'image': 'assets/images/breakfast3.jpg',
                    'description': 'Bakpao adalah salah satu makanan khas Indonesia yang terbuat dari adonan tepung terigu yang diisi dengan bahan-bahan yang berbeda, seperti daging ayam, atau sayuran. Bakpao kemudian dikukus hingga matang dan disajikan dalam keadaan hangat.',
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
                      image: AssetImage("assets/images/breakfast3.jpg"),
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
                      'Bakpao',
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