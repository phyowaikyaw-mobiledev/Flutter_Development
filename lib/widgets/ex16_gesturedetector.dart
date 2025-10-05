  import 'package:flutter/material.dart';

  class Ex16Gesturedetector extends StatelessWidget {
    const Ex16Gesturedetector({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("GestureDetector"),
        ),
        body: Center(
            child: GestureDetector(
              onTap: () {
                print("Clicked Here");
              },
                onDoubleTap: (){
                print("Here is Double Tap");
                },
                child: Text("Click Me"))),

      );
    }
  }
