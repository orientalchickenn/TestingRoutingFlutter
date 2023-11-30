import 'package:flutter/material.dart';
import 'package:gslc17/firstscreen.dart';
import 'package:gslc17/secondscreen.dart';

class Routes extends StatefulWidget{
  const Routes({super.key});

  
  @override
  State<Routes> createState() => _Routes();
}

class _Routes extends State<Routes>{
  Widget? activeScreen;
  @override
  void initState() {
    activeScreen = FirstScreen(goNext: switchScreen,);
    super.initState();
  }
  void switchScreen(){
    setState(() {
      activeScreen = SecondScreen(goBack: screenBack);
    });
  }
  void screenBack(){
    setState(() {
      activeScreen = FirstScreen(goNext: switchScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: activeScreen,
    );
  }
}