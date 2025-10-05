  import 'package:flutter/material.dart';

  class Ex36Circularprogressindicator extends StatelessWidget {
    const Ex36Circularprogressindicator({super.key});
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Circular Progress Indicator"),
        ),
        body: Center(
          child: CircularProgressIndicator(
            // value: 0.3,
            backgroundColor: Colors.grey.shade300,
            color: Colors.green,
            strokeAlign: 2,
            strokeCap: StrokeCap.round,
            strokeWidth: 20,
          ),
        ),
      );
    }
  }
  