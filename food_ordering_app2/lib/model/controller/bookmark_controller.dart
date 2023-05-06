import 'package:get/get.dart';
import 'package:flutter/material.dart';

class BookmarkController extends GetxController {
  final bookmarkItems = <Map<String, dynamic>>[].obs;

  void removeItem(int index){
    bookmarkItems.removeAt(index);
  }

  void addToBookmark(String title, String image) {
   bool isDuplicate = bookmarkItems.any((item) => item['title'] == title && item['image'] == image);
    if (isDuplicate) {
      Get.snackbar(
        'Oops...', 
        "You've Already Bookmarked This Food",
        backgroundColor: Colors.black,
        colorText: Colors.white,
      );
    } else {
      bookmarkItems.add({'title': title, 'image': image});
    }
  }

  bool isBookmarked(String title, String image) {
    return bookmarkItems.any((item) => item['title'] == title && item['image'] == image);
  }
}