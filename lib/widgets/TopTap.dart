import 'package:flutter/material.dart';

import 'package:hotelapp/provider/rooms.dart';
import 'package:hotelapp/models/room.dart';
import 'package:hotelapp/widgets/room_item.dart';
import 'package:provider/provider.dart';

class TopTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Room> singleRoom = Provider.of<Rooms>(context).hotelRooms;

    return Container(
      height: 430,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            decoration: BoxDecoration(
              color: Color.fromRGBO(237, 237, 237, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '365',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Properties found',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: singleRoom.length,
              itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                value: singleRoom[i],
                child: RoomItem(
                  // id: singleRoom[i].id,
                  // imageUrl: singleRoom[i].imageUrl,
                  // rating: singleRoom[i].rating,
                  // price: singleRoom[i].price,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
