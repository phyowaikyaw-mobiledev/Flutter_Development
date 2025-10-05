        import 'package:flutter/material.dart';
import 'package:flutter_dev_collection/navigation/screen_b.dart';

      class ScreenC extends StatelessWidget {
        const ScreenC({super.key});
      
        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Screen C"),
            ),
            body: Center(
              child: Column(
                children: [
                  ElevatedButton.icon(onPressed: (){
                    Navigator.of(context).pop();
                  },
                      icon: Icon(Icons.arrow_back),
                      label: Text("Go Back To Screen B",)),
                  ElevatedButton.icon(onPressed: (){
                    Navigator.of(context).popUntil((route)=>route.isFirst);
                  },
                      icon: Icon(Icons.arrow_back),
                      label: Text("Go Back To Screen A")),
                ],
              ),
            ),
          );
        }
      }
      