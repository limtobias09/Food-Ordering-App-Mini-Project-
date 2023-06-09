import 'package:flutter/material.dart';
import 'package:food_ordering_app2/model/controller/cart_controller.dart';
import 'package:food_ordering_app2/model/controller/bookmark_controller.dart';
import 'package:get/get.dart';
import 'package:favorite_button/favorite_button.dart';


class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  int count=0;

  List<Map<String, dynamic>> cart=[];
  

  void addToCart(String title, String image, int quantity){
    final cartController=Get.find<CartController>();
    cartController.addToCart(title, image, quantity);
  }

  void addToBookmark(String title, String image){
    final bookmarkController=Get.find<BookmarkController>();
    bookmarkController.addToBookmark(title, image);
  }

  void incrementCount(){
    setState(() {
      count ++;
    });
  }

  void decrementCount(){
    if(count>0){
      setState(() {
        count --;
      });
    }
  }
  
  
  @override
  Widget build(BuildContext context) {

    final args= ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final title= args['title'] as String;
    final image= args['image'] as String;
    final description= args ['description'] as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(args['title']),
        backgroundColor: const Color.fromARGB(255, 154, 41, 33),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.pushNamed(
                  context, 
                  '/4',
                  arguments: {'cart': cart}
                  );
            }, 
            icon: Stack(
              children:[ 
                const Icon(
                Icons.shopping_cart, 
                color: Colors.black,
                ),
                if(cart.isNotEmpty)
              Positioned(
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                  child: Text(
                    '${cart.length}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
               )
              ]
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

          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(args['description']
          ),
         ),
          
          

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: (){
                  decrementCount();
                }, 
                icon: const Icon (Icons.remove),
                ),
                Text(count.toString()),
                IconButton(
                  onPressed: (){
                    incrementCount();
                  }, 
                  icon: const Icon(Icons.add),
                  ),

                  const SizedBox(width: 8),

                  ElevatedButton(
                    onPressed: (){
                      if(count>0){
                       addToCart(title, image, count);
                       Get.snackbar(
                        'Great Choice',
                        'Your Food Is Added or Updated To Your Cart',
                        backgroundColor: Colors.black,
                        colorText: Colors.white,
                        duration: const Duration(seconds: 4),
                        );
                      }else{
                        Get.snackbar(
                          'Whoops...', 
                          'Please Add At Least One Item To Your Cart',
                          backgroundColor: Colors.black,
                          colorText: Colors.white,
                          duration: const Duration(seconds: 4),
                          );
                      } 
                    }, 
                    child: const Text('Add To Cart')
                    ),

                   const SizedBox(width: 8),

                    FavoriteButton(
                    isFavorite: Get.find<BookmarkController>().isBookmarked(title, image),
                    iconSize: 40.0,
                    valueChanged: (isFavorite) {
                      final bookmarkController = Get.find<BookmarkController>();
                      if (isFavorite) {
                        bookmarkController.addToBookmark(title, image);
                      } else {
                        int index = bookmarkController.bookmarkItems.indexWhere(
                          (item) => item['title'] == title && item['image'] == image
                          );
                        if (index != -1) {
                          bookmarkController.removeItem(index);
                          Get.snackbar(
                            'Success', 
                            "Removed from Bookmarks",
                            backgroundColor: Colors.black,
                            colorText: Colors.white,
                          );
                        }
                      }
                    },
                  )
                  ],
                ),
        ],
      ),
    );
  }
}