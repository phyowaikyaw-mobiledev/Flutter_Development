import 'package:flutter/material.dart';


  class Ex27Statefulwidget extends StatefulWidget {
    const Ex27Statefulwidget({super.key});


  
    @override
    State<Ex27Statefulwidget> createState() => _Ex27StatefulwidgetState();
  }
  
  //_Ex27StatefulwidgetState ----> Private

  class _Ex27StatefulwidgetState extends State<Ex27Statefulwidget> {

    int number =1;

    @override
    Widget build(BuildContext context) {
      print("build $number");
      return Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widgets"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number.toString()),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      number++;
                      // setstate is doing => recall build method ,all of widgets tree rebuild when use setstate(){} .
                    });

                    print(number);
                  },
                  child: Text("Increase"))
            ],
          ),
        )
        
      );
    }
  }
  
  /*
  Stateless Widgets 
  -Definition: 
        These widgets do not change their state once they are built , They are imutable.
  -Usage :
  ideal for static content that doesn't need to update dynamically.
  
  Stateful Widgets
  -Definition
  
    These widgets can change their state during the app's lifecycle , They are imutable.
  - Usage:
     Suitable for dynamic context that needs to  update based on use interaction or other factors.
   */