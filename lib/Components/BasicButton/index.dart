import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget {
  BasicButton(this.data, {@required this.onPressed});
  final GestureTapCallback onPressed;
  final String data;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        fillColor: Colors.green,
        splashColor: Colors.blue,
        child: Container(
          // margin: EdgeInsets.all(50.0),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  data,
                  maxLines: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)));
  }
}
