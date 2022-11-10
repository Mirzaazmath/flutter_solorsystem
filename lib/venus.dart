import 'dart:math';

import 'package:flutter/material.dart';
class Venus extends StatefulWidget {
  const Venus({Key? key}) : super(key: key);

  @override
  State<Venus> createState() => _VenusState();
}

class _VenusState extends State<Venus> with SingleTickerProviderStateMixin {
  late final AnimationController _controller=AnimationController(vsync: this,duration: const Duration(seconds: 7))..repeat();

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
          width: 160,

          alignment: Alignment.topRight,
          child:  Image.asset('assets/venus.png',height: 30,width: 30,),
        )
    );
  }
}
