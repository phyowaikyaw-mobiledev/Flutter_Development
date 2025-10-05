  import 'package:flutter/material.dart';

  class Ex10Column extends StatelessWidget {
    const Ex10Column({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Layout (Column)'),
        ),
        body: Container(
          width: 400,
          color: Colors.black,
          child: Column(
            mainAxisSize: MainAxisSize.max,
             crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.pink,
              ),  Container(
                width: 100,
                height: 100,
                color: Colors.purpleAccent,
              ),  Container(
                width: 100,
                height: 100,
                color: Colors.tealAccent,
              ),
            ],
          ),
        ),
      );
    }
  }
