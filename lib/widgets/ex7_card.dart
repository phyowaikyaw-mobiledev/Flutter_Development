  import 'package:flutter/material.dart';

  class Ex7Card extends StatelessWidget {
    const Ex7Card({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.amber,
                  margin: EdgeInsets.all(20),
                  elevation: 30,
                  child: Text("Andrew",
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              )),

      );
    }
  }
