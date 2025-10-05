  import 'package:flutter/material.dart';

  class Ex45Dialog extends StatelessWidget {
    const Ex45Dialog({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Dialog"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () async{
               final result = await showDialog(
                  barrierDismissible: false,
                    context: context,
                    builder: (context) => AboutDialog(
                      applicationIcon: FlutterLogo(),
                      applicationName: "Flutter Course",
                      applicationVersion: "1.0.0",
                      children: [
                        Text("Hello"),
                        Text("Hello"),
                        Text("Hello"),
                      ],
                    )



                    //     AlertDialog(
                    //   icon: Icon(Icons.home),
                    //   title: Text("Title"),
                    //   content: Text("Subtitle"),
                    //   actions: [
                    //     TextButton(
                    //         onPressed: (){
                    //           Navigator.of(context).pop(false);
                    //         },
                    //         child: Text('Cancel')),
                    //     TextButton(
                    //         onPressed: (){
                    //           Navigator.of(context).pop(true);
                    //         },
                    //         child: Text('Ok')),
                    //   ],
                    // )



                  // SimpleDialog(
                    //   title: Text("title"),
                    //   children: [
                    //     Text("Hello"),
                    //     Text("Hello"),
                    //     Text("Hello"),
                    //   ],
                    // )

                    //     Dialog.fullscreen(
                    //   child: Text("Hello"),
                    // )   // to show full screen
                        
                    //     Dialog(
                    //   child: Padding(
                    //       padding: EdgeInsets.all(16.0),
                    //     child: Text("Hello"),
                    //   ),
                    // ),

                );
               debugPrint(result.toString());
              },
              child: Text("Hello")),
        ),
      );
    }
  }
