  import 'package:flutter/material.dart';

  class Ex8Buttons extends StatelessWidget {
    const Ex8Buttons({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
            
          child: OutlinedButton.icon(
              onPressed: (){}, 
              label: Text('Home'),
            icon: Icon(Icons.home),
          
          ),
          
          // child: OutlinedButton(onPressed: (){}, child: Text('Submit')),

          // child: IconButton(onPressed: (){}, icon: Icon(Icons.home)),
          
          // child: TextButton(onPressed: (){}, child: Text('Submit')),
          
            // child: ElevatedButton(
            //     onPressed: (){
            //       print("clicked");
            //     },
            //     style: ButtonStyle(
            //       backgroundColor: WidgetStatePropertyAll(Colors.red),
            //       foregroundColor: WidgetStatePropertyAll(Colors.white),
            //       elevation: WidgetStatePropertyAll(10)
            //       //foregroundColor = child's Text
            //     ),
            //     child: Text("Submit"))
        ),

      );
    }
  }
