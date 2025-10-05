

      //Navigation
      //Stack -> LIFO (Last in First Out)


      /*
       Navigator.of(context).push();
       Navigator.of(context).pop();
       Navigator.of(context).popUntil((route)=>route.isFirst);
       Navigator.of(context).pushReplacement((route)=>route.isFirst);
       Navigator.of(context).pushandRemoveUntil((route)=>route.isFirst);
       */


         /*
               push(ScreenB)            push(ScreenC)

               | *ScreenA |            | *ScreenB |            | *ScreenC |
               +----------+            |  ScreenA |            |  ScreenB |
                                       +----------+            |  ScreenA |
                                                               +-----------
       */


        /*
          1.   -Passing Argument:
            Navigator.of(context).push(
            MaterialPageRoute(
            builder:(_) => ScreenB (data:dataFromScreenA);
            ),
            );

          2.    -Using Route Argument
            Navigator.of(context).push(
            MaterialPageRoute(
            builder:(_) => const ScreenB(),
            settings:const RouteSettings(
            arguments: dataFromScreenA
            ),
            ),
            );



           From ScreenB to ScreenA
           async
           await













       */
