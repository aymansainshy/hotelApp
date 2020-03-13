import 'package:flutter/cupertino.dart';

class HotelNear {
  final String name;
  final String imageUrl;

  HotelNear({
    @required this.name,
    @required this.imageUrl,
  });
}

List<HotelNear> hotelsNear = [
  HotelNear(
    name: 'Empire state building',
    imageUrl:
        'https://sophosnews.files.wordpress.com/2016/02/empire-state-building.jpg?w=780&h=408&crop=1',
  ),
  HotelNear(
    name: ' Central Park',
    imageUrl: 'https://cdn.getyourguide.com/img/tour_img-939009-146.jpg',
  ),
  HotelNear(
    name: 'Times Square',
    imageUrl:
        'https://images.adsttc.com/media/images/5a6a/2b1c/f197/ccde/2400/0617/newsletter/image_(2).jpg?1516907284',
  ),
];
