import 'package:flutter/material.dart';
import 'dart:math';
class Mars extends StatefulWidget {
  const Mars({Key? key}) : super(key: key);

  @override
  State<Mars> createState() => _EarthState();
}

class _EarthState extends State<Mars> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this, duration:const  Duration(seconds:10 ))..repeat();


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
          width: 250,
          alignment: Alignment.topRight,
          child:  Image.asset('assets/mars.png',height: 25,width: 25,),
        )
    );
  }
}
