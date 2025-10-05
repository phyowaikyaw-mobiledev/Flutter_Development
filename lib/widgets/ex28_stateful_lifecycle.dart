      import 'package:flutter/material.dart';

import 'ex28_part.dart';

    class Ex28StatefulLifecycle extends StatefulWidget {
      const Ex28StatefulLifecycle({super.key});

      @override
      State<Ex28StatefulLifecycle> createState() => _Ex28StatefulLifecycleState();
    }


    class _Ex28StatefulLifecycleState extends State<Ex28StatefulLifecycle> {
      int number =1;

      @override
      void initState(){
        super.initState();
        debugPrint("initState $number");
      }

      @override
      void didChangeDependencies(){
        debugPrint("didChangeDependencies $number");
        super.didChangeDependencies();
      }


      @override
      Widget build(BuildContext context) {
        debugPrint("build $number");
        return Scaffold(
          appBar: AppBar(
            title: Text("Stateful widget"),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NumberText(number:number),
              SizedBox(height:16),
                Text("Parent number : $number"),
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        number++;
                      });
                      debugPrint(number.toString());
                    },
                    child: Text("Increase")),
                ElevatedButton(
                    onPressed: (){
                     Navigator.of(context).push(
                       MaterialPageRoute(builder: (context)=> NumberText(number: 99)
                       )
                      );
                    },
                    child: Text("Go To Detail"))
              ],
            ),
          ),
        );

      }

      @override
      void didUpdateWidget(covariant Ex28StatefulLifecycle oldWidget){
          debugPrint("didUpdateWidget $number");
          super.didUpdateWidget(oldWidget);
      }

      @override
      void deactivate(){
        debugPrint("deactivate $number");
        super.deactivate();
      }

      @override
      void dispose(){
        debugPrint("dispose $number");
        super.dispose();
      }


    }

