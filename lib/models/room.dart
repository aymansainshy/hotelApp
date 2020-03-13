import 'package:flutter/cupertino.dart';

class Room {
  final String id;
  final String imageUrl;
  final String detail;
  final double price;
  final double rating;

  Room({
    @required this.id,
    @required this.imageUrl,
    @required this.detail,
    @required this.price,
    @required this.rating,
  });
}
