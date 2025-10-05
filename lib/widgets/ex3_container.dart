 import 'package:flutter/material.dart';

    class Ex3Container extends StatelessWidget {
    const Ex3Container({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Center(
            child: Container(
              // color: Colors.black,
              width: 300,
              height: 250,
              child: Container(
                width: 250,
                height: 250,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  // color: Colors.purpleAccent,
                  // border: Border.all(
                  //   color: Colors.red,
                  //   width: 2,
                  //   strokeAlign: 8,
                  //   style: BorderStyle.solid,
                  // ),
                  // shape: BoxShape.circle,
                   borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue,
                      offset: Offset(1, 1),
                      blurRadius: 20,
                      spreadRadius: 8,
                      blurStyle: BlurStyle.outer
                    ),
                  ],
                  gradient:LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.purpleAccent
                      ]

                  )
                ),
                child: Text('Hello Andrew'),
              ),
            ),
          ),
      );
    }
  }
