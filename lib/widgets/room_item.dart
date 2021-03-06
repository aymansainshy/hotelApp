import 'package:flutter/material.dart';
import 'package:hotelapp/models/room.dart';
import 'package:provider/provider.dart';

import '../screens/room_detail_screen.dart';

class RoomItem extends StatelessWidget {
  // final String id;
  // final String imageUrl;
  // final double price;
  // final double rating;

  // const RoomItem({
  //   Key key,
  //   @required this.imageUrl,
  //   @required this.id,
  //   @required this.rating,
  //   @required this.price,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Room room = Provider.of<Room>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(RoomDetailScreen.routeName, arguments: room.id);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      room.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: _buildContainer(
                    context,
                    room.rating > 6
                        ? Colors.lightGreenAccent[700]
                        : Colors.yellow[700],
                    Center(
                      child: Text(
                        room.rating.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: _buildContainer(
                    context,
                    Colors.black54,
                    IconButton(
                      onPressed: () {
                        room.toggleFavorite();
                      },
                      icon: Icon(
                        room.isFavorites
                            ? Icons.bookmark
                            : Icons.bookmark_border,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Hotel Name',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$${room.price}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Hotel Location',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '3 x 4 nights ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 45,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(237, 237, 237, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.room,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '5 km from center ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildContainer(BuildContext ctx, Color color, Widget child) {
  return Container(
    width: 45,
    height: 40,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: child,
  );
}
