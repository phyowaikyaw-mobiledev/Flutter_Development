        import 'package:flutter/material.dart';
import 'package:flutter_dev_collection/navigation/screen_a.dart';
import 'package:flutter_dev_collection/navigation/screen_c.dart';
    
      class ScreenB extends StatelessWidget {
        const ScreenB({super.key, required this.data});
        final String data;

      
        @override
        Widget build(BuildContext context) {
          // final argument = ModalRoute.of(context)!.settings.arguments as String;
          return Scaffold(
            appBar: AppBar(
              title: Text("Screen B"),
            ),
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Data: $data"),
                  Text("Data From argument : -----"),
                  ElevatedButton.icon(onPressed: (){
                    Navigator.of(context).pop('Data From Screen B');
                  },
                      icon: Icon(Icons.arrow_back),
                      label: Text("Go Back To Screen A")
                  ),
                  ElevatedButton.icon(onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=> ScreenC()));
                  },
                    icon: Icon(Icons.arrow_forward),
                      label: Text("Go To Screen C"),
                      ),
                  ElevatedButton.icon(onPressed:(){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> ScreenC()));
                  },
                    icon: Icon(Icons.arrow_forward),
                    label: Text("Replace Screen C"),
                  ),
                  ElevatedButton.icon(onPressed:(){
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> ScreenC()),
                        (Route<dynamic>route)=>true
                    );
                  },
                    icon: Icon(Icons.arrow_forward),
                    label: Text("Push&Remove Until Screen C"),
                  ),
                ],
              ),
            ),
          );
        }
      }
      