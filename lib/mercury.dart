import 'dart:math';

import 'package:flutter/material.dart';
class Mercury extends StatefulWidget {
  const Mercury({Key? key}) : super(key: key);

  @override
  State<Mercury> createState() => _MercuryState();
}

class _MercuryState extends State<Mercury> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this, duration:const  Duration(seconds:5 ))..repeat();


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
          height: 120,
          width: 130,
          alignment: Alignment.topRight,
          child:  Image.asset('assets/mercury.png',height: 20,width: 20,),
        )
    );
  }
}
