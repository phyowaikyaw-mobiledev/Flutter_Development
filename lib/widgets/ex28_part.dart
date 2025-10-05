  import 'package:flutter/material.dart';

  class NumberText extends StatefulWidget {
    const NumberText({super.key,required this.number});

    //Widget Configuration
    final int number;

    @override
    State<NumberText> createState() => _NumberTextState();
  }

  class _NumberTextState extends State<NumberText> {
    int localNumberState = 1;

    @override
    void initState(){
      super.initState();
      debugPrint("initState NumberText ${widget.number} $localNumberState");
    }

    @override
    void didChangeDependencies(){
      debugPrint("didChangeDependencies Number Text ${widget.number} $localNumberState");
    }


    @override
    Widget build(BuildContext context) {
      debugPrint("build NumberText ${widget.number} $localNumberState");
      return Container(
        padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Column(
                  children: [
                    Text("Constructor Number : ${widget.number}"),
                    Text("Local Number: $localNumberState"),
                    OutlinedButton(
                        onPressed: (){
                          setState(() {
                            localNumberState++;
                          });
                        },
                        child: Text("Increase Local Number"),
                    )
                  ],
                ),
      );
    }
    @override
    void didUpdateWidget (covariant NumberText oldWidget){
      debugPrint("didUpdateWidget NumberText ${widget.number} $localNumberState");
      super.didChangeDependencies();
  }

    @override
    void deactivate(){
      debugPrint("deactivate NumberText ${widget.number} $localNumberState");
      super.deactivate();
    }

    @override
    void dispose(){
      debugPrint("dispose NumberText ${widget.number} $localNumberState");
      super.dispose();
    }


  }




