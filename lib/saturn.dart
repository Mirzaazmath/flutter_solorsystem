import 'dart:math';

import 'package:flutter/material.dart';
class Saturn extends StatefulWidget {
  const Saturn({Key? key}) : super(key: key);

  @override
  State<Saturn> createState() => _SaturnState();
}

class _SaturnState extends State<Saturn> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this, duration:const  Duration(seconds:15 ))..repeat();

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (_, child) {
          return Transform.rotate(
            angle: _controller.value * 2 * pi,
            child: child,
          );
        },
        child:Container(
          height:100,
          width: 350,
          alignment: Alignment.topRight,
          child:  Image.asset('assets/s.png',height: 30,width: 30,),
        )
    );
  }
}
