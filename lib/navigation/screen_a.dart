              import 'package:flutter/material.dart';
          import 'package:flutter_dev_collection/navigation/screen_b.dart';

            class ScreenA extends StatelessWidget {
              const ScreenA({super.key ,});



              @override
              Widget build(BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text("Screen A"),
                  ),
                  body: Center(
                    child: Column(
                      children: [
                       ElevatedButton.icon(
                         icon: Icon(Icons.arrow_forward,),
                         label: Text("Go To Screen B"),
                         onPressed: ()async{
                           const dataFromScreenA ="dataFromScreenA";
                           final result = await  Navigator.of(context).pushNamed('screenB',arguments: dataFromScreenA);
                           //Named Route
                           debugPrint("result: $result");
                         },
                       ),
                        ElevatedButton.icon(
                          icon: Icon(Icons.arrow_forward,),
                          label: Text("Go To Screen C using namedRoute"),
                          onPressed: ()async{
                            const dataFromScreenA ="dataFromScreenA";
                            final result = await  Navigator.of(context).pushNamed('screenC'); //Named Route
                            debugPrint("result: $result");
                          },
                        )
                      ],
                    ),
                  ),
                );
              }
            }
