import 'package:flutter/material.dart';
class Uranus extends StatefulWidget {
  const Uranus({Key? key}) : super(key: key);

  @override
  State<Uranus> createState() => _UranusState();
}

class _UranusState extends State<Uranus> with SingleTickerProviderStateMixin {
  late final  AnimationController _controller= AnimationController(vsync: this,duration:const Duration(minutes: 10))..repeat();

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
    return AnimatedBuilder(animation: _controller, builder: (_, child) {
      return Transform.rotate(angle: _controller.value*2*180,
      child: child,);
    },
    child:Container(
      height: 100,
    width: 400,
    alignment: Alignment.topRight,
    child:  Image.asset('assets/uranus.png',height: 30,width: 30,),
    ));
  }
}
