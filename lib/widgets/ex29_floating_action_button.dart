  import 'package:flutter/material.dart';

  class Ex29FloatingActionButton extends StatelessWidget {
    const Ex29FloatingActionButton({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Floating Action Butten"),
        ),
        body: Center(
          child: Text("Hello"),
        ),
        floatingActionButton: FloatingActionButton.extended(
          tooltip: "Go To Messenger Page",
            onPressed:(){},
          icon: Icon(Icons.message),
          label: Text("To Messenger"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.noAnimation,
      );
    }
  }
