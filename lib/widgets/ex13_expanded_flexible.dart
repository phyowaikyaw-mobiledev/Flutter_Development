    import 'package:flutter/material.dart';

  class Ex13ExpandedFlexible extends StatelessWidget {
    const Ex13ExpandedFlexible({super.key});
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Expanded Vs Flexible"),
          centerTitle: true,
        ),
        body: Container(
          height: 400,
          color: Colors.amberAccent,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                ),
              ),Flexible(
                    flex: 4 ,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    ),
                  ),Expanded(
                    flex: 2,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),

          //Column can do this task also like this.
        ),
      );
    }
  }
  