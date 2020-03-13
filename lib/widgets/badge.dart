import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  const Badge({
    Key key,
    @required this.child,
    // @required this.value,
    this.color,
  }) : super(key: key);

  final Widget child;
  // final String value;
  final Color color;

  final bool isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: -10,
          top: -15,
          child: CircleAvatar(
            backgroundColor: Theme.of(context).accentColor,
            radius: 13,
            child: Transform.translate(
              offset: Offset(0, -2),
              child: Text(
                '0',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
