import 'package:flutter/material.dart';
import 'dart:math';
class Earth extends StatefulWidget {
  const Earth({Key? key}) : super(key: key);

  @override
  State<Earth> createState() => _EarthState();
}

class _EarthState extends State<Earth> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this, duration:const  Duration(seconds:9 ))..repeat();


  @override
  void initState() {
    super.initState();
    // _controller = AnimationController(vsync: this);
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
        width: 200,
        alignment: Alignment.topRight,
        child:  Image.asset('assets/earth.png',height: 25,width: 25,),
      )
    );
  }
}
