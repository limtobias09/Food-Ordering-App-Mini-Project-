import 'package:flutter/material.dart';
import 'package:food_ordering_app2/model/controller/bookmark_controller.dart';
import 'package:food_ordering_app2/view/dashboard/dashboard_screen.dart';
import 'package:get/get.dart';

class BookmarkScreen extends StatefulWidget {
  final BookmarkController bookmarkController;

  const BookmarkScreen({Key? key, required this.bookmarkController}) : super(key: key);


  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {

    final bookmarkController= Get.find<BookmarkController>();
    final bookmarkItems=bookmarkController.bookmarkItems;

    return Scaffold(
      appBar: AppBar(
        title: const Text('See Your Favorite Foods'),
        backgroundColor: const Color.fromARGB(255, 154, 41, 33),
      ),

      body: GetBuilder<BookmarkController>(
        builder: (bookmarkController){
          final bookmarkItems=bookmarkController.bookmarkItems;
          return bookmarkItems.isNotEmpty?
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: GridView.builder(
          
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
            
                  //rasio tinggi/lebar setiap item
                  childAspectRatio: 2/3,
                  ),
                itemCount: bookmarkItems.length,
                itemBuilder: (BuildContext context, int index){
                  final food= bookmarkItems[index];
                  return Card(
                    elevation: 10,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    
                    child: Stack(
                      children:[
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child: Image.asset(food['image'], fit: BoxFit.cover,)),
                        Padding(padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Text(
                              food['title'], 
                              style: const TextStyle(
                                fontSize: 16),
                                ),
                              ],
                            ),
                           ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            onPressed: (){
                              setState(() {
                                bookmarkController.removeItem(index);
                              });
                            }, 
                            icon: const Icon(Icons.delete_rounded)
                            ),
                        )
                      ],
                      )
                      ]
                    ),
                  );
                }
                ),
            ),
          ): 
            const Center(
              child: Text('No items in bookmark'),
            );
        }
        ),
    );
  }
}