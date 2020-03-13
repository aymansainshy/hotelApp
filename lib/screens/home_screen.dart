import 'package:flutter/material.dart';
import 'package:hotelapp/widgets/badge.dart';


import '../widgets/tap_selector.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 50),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'New York',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Badge(
                    child: _buildContainer(
                  context,
                  Center(
                    child: Icon(
                      Icons.sort,
                      color: Theme.of(context).accentColor,
                      size: 30,
                    ),
                  ),
                ))
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                _buildContainer(
                  context,
                  Center(
                    child: Text(
                      '11 - 12 Dec',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  radiusSize: 5.0,
                  width: 100.0,
                  height: 35.0,
                ),
                SizedBox(width: 10),
                _buildContainer(
                  context,
                  Center(
                    child: Text(
                      '3 guests',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  radiusSize: 5.0,
                  width: 100.0,
                  height: 35.0,
                ),
                SizedBox(width: 10),
                _buildContainer(
                  context,
                  Center(
                    child: Text(
                      '4 nights',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  radiusSize: 5.0,
                  width: 100.0,
                  height: 35.0,
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(
              color: Colors.grey,
              height: 2,
            ),
            TapSelector(),
          ],
        ),
      ),
    );
  }
}

Widget _buildContainer(
  BuildContext context,
  Widget widget, {
  double radiusSize = 10,
  double height = 40,
  double width = 40,
}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radiusSize),
      border: Border.all(
        color: Colors.grey,
        style: BorderStyle.solid,
      ),
    ),
    child: widget,
  );
}
