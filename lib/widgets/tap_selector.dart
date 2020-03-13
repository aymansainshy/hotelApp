import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.only(right: 10),
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
              fontSize: _isSelected ? 20 : 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _buildTapSelected(),
    );
  }
}
