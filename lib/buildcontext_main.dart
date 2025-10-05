    import 'package:flutter/material.dart';
import 'package:flutter_dev_collection/widgets/ex2_text.dart';

      // BuildContext
      //Each widget in flutter has a buildcontext
     //which holds information about the widget's location
    // in the widgets tree
    //It access to things higher up in the widget hierarchy
    //like the Navigator , theme , etc...

  class BuildcontextMain extends StatelessWidget {
    const BuildcontextMain({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Builder(
            builder: (ctx) {
              return TextButton(
                  onPressed: (){
                    Navigator.of(ctx).push(
                      MaterialPageRoute(builder: (_)=> Ex2Text())
                    );
                  },
                  child: Text("Go To Next Page")
              );
            }
          ),
        ),
      );
    }
  }


  /*
     - BuildcontextMain( BuildContext context)
        -  Material App(BuildContext)
           - Scaffold (BuildContext) [Navigator]
             - Center (BuildContext)
               - TextButton (BuildContext)
                 - Navigator.of(context).push
   */

    /*
     - BuildcontextMain( BuildContext context)
        -  Material App(BuildContext)
           - Scaffold (BuildContext) [Navigator]
             - Center (BuildContext)
              -Builder ( BuildContext ctx)
               - TextButton (BuildContext)
                 - Navigator.of(ctx).push
   */
