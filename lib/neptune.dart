import 'package:flutter/material.dart';
class Neptune extends StatefulWidget {
  const Neptune({Key? key}) : super(key: key);

  @override
  State<Neptune> createState() => _NeptuneState();
}

class _NeptuneState extends State<Neptune> with SingleTickerProviderStateMixin {
  late final  AnimationController _controller=AnimationController(vsync:this,duration: Duration(minutes: 20))..repeat();

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
    return AnimatedBuilder(animation: _controller, builder: (_,child){
      return Transform.rotate(angle: _controller.value*360,
      child: child,);
    },
   child:Container(
     height: 100,
      width: 500,
      alignment: Alignment.topRight,
      child:  Image.asset('assets/neptune.png',height: 20,width: 20,),
    )
    );
  }
}
