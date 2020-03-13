import 'dart:html';

import 'package:flutter/cupertino.dart';

class HotelModel {
  final String id;
  final String name;
  final String imageUrl;
  final List services;
  final Location location;

  HotelModel({
    @required this.id,
    @required this.imageUrl,
    @required this.name,
    @required this.services,
    @required this.location,
  });
}
