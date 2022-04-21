import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Spinning extends StatelessWidget {
  const Spinning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:SpinKitSpinningLines(
        size:55,
        color: Color.fromARGB(255, 20, 180, 159)
      )
    );
  }
}