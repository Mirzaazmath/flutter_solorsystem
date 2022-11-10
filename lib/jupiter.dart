import 'dart:math';

import 'package:flutter/material.dart';
class Jupiter extends StatefulWidget {
  const Jupiter({Key? key}) : super(key: key);

  @override
  State<Jupiter> createState() => _JupiterState();
}

class _JupiterState extends State<Jupiter> with SingleTickerProviderStateMixin {
  late final AnimationController _controller=AnimationController(vsync: this,duration: const Duration(seconds: 12))..repeat();

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
          height: 100,
          width: 350,
          alignment: Alignment.topRight,
          child:  Image.asset('assets/jupiter.png',height: 50,width: 50,),
        )
    );
  }
}
