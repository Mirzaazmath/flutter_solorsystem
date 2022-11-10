import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sun/jupiter.dart';
import 'package:sun/mercury.dart';
import 'package:sun/neptune.dart';
import 'package:sun/saturn.dart';
import 'package:sun/uranus.dart';
import 'package:sun/venus.dart';

import 'earth.dart';
import 'homepage.dart';
import 'mars.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final player=AudioPlayer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sound();




  }
  // audio
  Future sound()async{
    await  player.play(AssetSource("sound.mp3"));
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/stars.webp"),fit: BoxFit.fill
          )
        ),
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              child:const  SizedBox(
                  height: 100,
                  child:  HomePage()),
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                height:50,
                width: 230,
                color: Colors.transparent,
                child:const Mercury() ,
              ),
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                height:50,
                width: 250,
                color: Colors.transparent,
                child:const Venus() ,
              ),
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                height:50,
                width: 280,
                color: Colors.transparent,
                child:const Earth() ,
              ),
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                height:50,
                width: 300,
                color: Colors.transparent,
                child:const Mars() ,
              ),
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                height:50,
                width: 330,
                color: Colors.transparent,
                child:const Jupiter() ,
              ),
            ), Center(
              child: Container(
                alignment: Alignment.center,
                height:50,
                width: 380,
                color: Colors.transparent,
                child:const Saturn() ,
              ),
            ), Center(
              child: Container(
                alignment: Alignment.center,
                height:50,
                width: 400,
                color: Colors.transparent,
                child:const Uranus() ,
              ),
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                height:50,
                width: 480,
                color: Colors.transparent,
                child:const Neptune() ,
              ),
            )
          ],
        ),
      ),
    );
  }
}

