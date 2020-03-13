import 'package:flutter/material.dart';

import 'package:hotelapp/controller/rooms.dart';
import 'package:hotelapp/widgets/fecllities.dart';
import 'package:hotelapp/widgets/hotels_near_you.dart';

class RoomDetailScreen extends StatefulWidget {
  static const routeName = 'Meal-Detail-Screen';

  @override
  _RoomDetailScreenState createState() => _RoomDetailScreenState();
}

class _RoomDetailScreenState extends State<RoomDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final roomId =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;

    var currentRoomId = roomId['roomId'];
    print(currentRoomId);

    var singleRoom = hotelRooms.firstWhere((room) => room.id == currentRoomId);

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300,
            automaticallyImplyLeading: false,
            pinned: true,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: _buildActions(
                  context,
                  Colors.black54,
                  IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 30,
                    ),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 10),
                child: _buildActions(
                  context,
                  Colors.black54,
                  IconButton(
                    icon: Icon(
                      Icons.bookmark_border,
                      size: 30,
                    ),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                singleRoom.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.all(15.0),
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
                            '\$${singleRoom.price}',
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Divider(color: Colors.grey, height: 2),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: Text(
                    'Facllities',
                    style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 110,
                  // color: Colors.red,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: fcellities
                        .map(
                          (fcel) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: Colors.grey,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: Icon(
                                    fcel.icon,
                                    size: 35,
                                  ),
                                ),
                                Text(
                                  fcel.title,
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Hotel Srroundings',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          'See map',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        textColor: Theme.of(context).accentColor,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  // color: Colors.red,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: hotelsNear
                        .map(
                          (hotNear) => Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 150,
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 100,
                                      width: MediaQuery.of(context).size.width,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        child: Image.network(
                                          hotNear.imageUrl,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5),
                                      child: FittedBox(
                                        child: Text(
                                          hotNear.name,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          Icons.room,
                                          color: Theme.of(context).accentColor,
                                        ),
                                        Text(
                                          '1.5 km',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Details',
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        singleRoom.detail,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black54,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 5, bottom: 5),
                  child: RaisedButton(
                    padding: EdgeInsets.all(8),
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    child: Text(
                      'Select Room',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildActions(BuildContext ctx, Color color, Widget child) {
  return Container(
    width: 45,
    height: 45,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: child,
  );
}
