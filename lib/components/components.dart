import 'package:flutter/material.dart';
import 'package:tOdO/components/constants.dart';



class FloatingButton extends StatelessWidget {

  final Function onPressed;
  FloatingButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 5,
      backgroundColor: kdarkGreen,
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 30,
      ),
      onPressed: onPressed,
    );
  }
}

class FlatButtonAdd extends StatelessWidget {
  final Function onPressed;
  FlatButtonAdd({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        padding: EdgeInsets.all(15),
        color: kdarkGreen,
        child: Center(
          child: Text(
            'Add',
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}


