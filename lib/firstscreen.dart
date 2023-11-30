import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key, required this.goNext});
  final void Function() goNext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen GSLC 17"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your image goes here
            Image.asset(
              'images/hi.gif', // Replace with the path to your image
              height: 100, // Adjust the height as needed
            ),
            SizedBox(height: 16), // Add some space between the image and the button
            TextButton(
              onPressed: goNext,
              child: Text("Next Button"),
            ),
          ],
        ),
      ),
    );
  }
}