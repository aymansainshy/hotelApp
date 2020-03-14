import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/room.dart';
import '../provider/rooms.dart';
import '../widgets/favorites_item.dart';

class FavoritesScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    List<Room> faveRoom = Provider.of<Rooms>(context).favorites;
    return faveRoom.isEmpty
        ? Center(
            child: Text(
              'No Favorites Room !',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).accentColor,
              ),
            ),
          )
        : Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: faveRoom
                    .map((favRom) => FavoritesItem(
                          favId: favRom.id,
                        ))
                    .toList(),
              ),
            ),
          );
  }
}
