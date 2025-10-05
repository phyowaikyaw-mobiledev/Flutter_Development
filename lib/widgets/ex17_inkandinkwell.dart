  import 'package:flutter/material.dart';

  class Ex17Inkandinkwell extends StatelessWidget {
    const Ex17Inkandinkwell({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Ink and InkWell"),
        ),
        body: Center(
            child: InkWell(
              splashColor: Colors.yellow,
              borderRadius: BorderRadius.circular(16),
              onTap: ()
              {print("Just One Click");},
              onDoubleTap: ()
              {print("Double Clicked");},
              child: Ink(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),

                ),

                  child: Text("Click Me")),

            ),
        ),

      );
    }
  }
