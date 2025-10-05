    import 'package:flutter/material.dart';

  class Ex46Bottomsheet extends StatelessWidget {
    const Ex46Bottomsheet({super.key});
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("BottomSheet"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: (){
                showModalBottomSheet(
                  backgroundColor: Colors.blue,
                    context: context,
                    builder: (context)=> Container(
                      height: 200,
                      width: double.infinity,
                      padding: EdgeInsets.all(16.0),
                      child: Text('Hello'),
                    )
                );
              },
              child: Text("Show Bottomsheet")),
        ),
      );
    }
  }
  