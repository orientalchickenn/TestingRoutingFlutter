import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  const SecondScreen({super.key, required this.goBack});
  final void Function() goBack;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen GSLC 17"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: TextButton(onPressed: goBack, child: Text("Back Button")),
      ),
    );
    
  }
}