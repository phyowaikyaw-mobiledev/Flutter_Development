  import 'package:flutter/material.dart';

  class Ex38Slider extends StatefulWidget {
    const Ex38Slider({super.key});

  @override
  State<Ex38Slider> createState() => _Ex38SliderState();
}

class _Ex38SliderState extends State<Ex38Slider> {
  double sliderValue = 0;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Slider"),
        ),
        body: Center(
          child: Slider(
            activeColor: Colors.red,
              inactiveColor: Colors.blue,
              thumbColor: Colors.white,
              max: 100,
              min: 0,
              value:sliderValue ,
              onChanged: (v){
                setState(() {
                  sliderValue = v;
                });
              }),
        ),
      );
    }
}


