import 'package:flutter/material.dart';


class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    final args= ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text(args['title']),
        backgroundColor: const Color.fromARGB(255, 154, 41, 33),
        actions: <Widget>[
          IconButton(
            onPressed: (){}, 
            icon: const Icon(
              Icons.shopping_cart, 
              color: Colors.black,
              )
              )
        ],
      ),

      body: Column(
        children: [
          const SizedBox(height: 16,),

          Center(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(args['image']),
                  fit: BoxFit.fill
                  ),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(0, 3)
                  )
                ],
              ),
              ),
          )
          ),
          
          Text(args['description']),
        ],
      ),
    );
  }
}