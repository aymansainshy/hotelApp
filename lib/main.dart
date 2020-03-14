import 'package:flutter/material.dart';
import 'package:hotelapp/provider/rooms.dart';
import 'package:provider/provider.dart';

import './screens/room_detail_screen.dart';
import './screens/tap_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Rooms(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HotelApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Color.fromRGBO(60, 53, 255, 1),
          fontFamily: 'Cairo',
        ),
        home: TapScreen(),
        routes: {
          RoomDetailScreen.routeName: (ctx) => RoomDetailScreen(),
        },
      ),
    );
  }
}
