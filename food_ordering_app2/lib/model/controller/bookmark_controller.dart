import 'package:get/get.dart';

class BookmarkController extends GetxController {
  final bookmarkItems = <Map<String, dynamic>>[].obs;

  void removeItem(int index){
    bookmarkItems.removeAt(index);
  }

  void addToBookmark(String title, String image) {
    bookmarkItems.add({'title': title, 'image': image});
  }
}