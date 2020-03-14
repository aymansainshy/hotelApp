import 'package:flutter/cupertino.dart';

class Room with ChangeNotifier {
  final String id;
  final String imageUrl;
  final String detail;
  final double price;
  final double rating;
   bool isFavorites;

  Room({
    @required this.id,
    @required this.imageUrl,
    @required this.detail,
    @required this.price,
    @required this.rating,
    this.isFavorites = false,
  });



  void toggleFavorite(){
     isFavorites =!isFavorites;
     notifyListeners();
  }
}
