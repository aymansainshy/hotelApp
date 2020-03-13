import 'package:flutter/material.dart';

class Fcellities {
  final String title;
  final IconData icon;

  Fcellities({
    @required this.title,
    @required this.icon,
  });
}

List<Fcellities> fcellities = [
  Fcellities(
    title: 'Internet',
    icon: Icons.wifi,
  ),
  Fcellities(
    title: 'Breakfast',
    icon: Icons.free_breakfast,
  ),
  Fcellities(
    title: 'Parking',
    icon: Icons.local_parking,
  ),
  Fcellities(
    title: 'Pets',
    icon: Icons.pets,
  ),
  Fcellities(
    title: 'Televetion',
    icon: Icons.live_tv,
  ),
];
