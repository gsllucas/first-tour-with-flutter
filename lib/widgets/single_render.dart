import 'package:flutter/material.dart';

class SingleRenderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.blue,
      margin: EdgeInsets.only(top: 12),
      child: Align(
        child: Container(
          height: 50,
          width: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
