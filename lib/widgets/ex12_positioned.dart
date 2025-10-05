  import 'package:flutter/material.dart';

  class Ex12Positioned extends StatelessWidget {
    const Ex12Positioned({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Layout(Stack)"),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.black,
            child: Stack(
              alignment: Alignment.center,
              fit:StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  right: -50,
                  bottom: 0,
                  child: Container(
                    width: 250,
                    height: 200,
                    color: Colors.red,
                  ),
                ), Container(
                  width: 200,
                  height: 150,
                  color: Colors.green,
                ), Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
