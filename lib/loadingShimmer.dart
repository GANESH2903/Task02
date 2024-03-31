
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loading extends StatelessWidget{
  const loading({
    Key ? key,
    this.height,
    this.width,
  }) : super(key: key);
  final double? height , width;

  @override
  Widget build(BuildContext){
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.04),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    );
  }
}
