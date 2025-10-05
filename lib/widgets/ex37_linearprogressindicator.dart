  import 'package:flutter/material.dart';

  class Ex37Linearprogressindicator extends StatelessWidget {
    const Ex37Linearprogressindicator({super.key});
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Linear Progress Indicator"),
        ),
        body: Center(
          child: LinearProgressIndicator(
                // value: 0.9,
             backgroundColor: Colors.grey.shade300,
            color: Colors.red,
            borderRadius: BorderRadius.circular(30),
            minHeight: 20,
          ),
        ),
      );
    }
  }
  