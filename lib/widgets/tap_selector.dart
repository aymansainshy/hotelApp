import 'package:flutter/material.dart';
import 'package:hotelapp/widgets/TopTap.dart';

class TapSelector extends StatefulWidget {
  @override
  _TapSelectorState createState() => _TapSelectorState();
}

class _TapSelectorState extends State<TapSelector> {
  final List<String> _tapSelector = [
    'Top',
    'Cheapest',
    'Rating & Price',
    'Comfort',
  ];

  int _currentIndex = 0;
  bool _isSelected;

  List<Widget> _buildTapSelected() {
    return _tapSelector.map((taps) {
      var index = _tapSelector.indexOf(taps);

      _isSelected = _currentIndex == index;

      return Padding(
        padding: const EdgeInsets.only(right: 18),
        child: GestureDetector(
          onTap: () {
            setState(() {
              _currentIndex = index;
            });
          },
          child: Text(
            taps,
            style: TextStyle(
              color: _isSelected ? Colors.black : Colors.grey,
              fontSize: _isSelected ? 18 : 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: Row(
              children: _buildTapSelected(),
            ),
          ),
          if (_currentIndex == 0) TopTap(),
          if (_currentIndex == 1) Text('Hi Ahmad'),
          if (_currentIndex == 2) Text('Hi Abdallah'),
          if (_currentIndex == 3) Text('Hi Mohmed'),
        ],
      ),
    );
  }
}
