import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
 late  Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _rotateAnimation=Tween<double>(begin: 0.0,end: 360).animate(_controller);
    _controller.repeat(period: const Duration(minutes: 10));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: _controller,
     builder: (BuildContext context, Widget? child) {
     return Transform.rotate(angle: _rotateAnimation.value,child: child,);

     },
      child:   Image.asset('assets/sun2.png'),

     );
  }
}
