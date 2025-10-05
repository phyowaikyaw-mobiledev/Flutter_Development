    import 'package:flutter/material.dart';

    class Ex47Snackbar extends StatelessWidget {
      const Ex47Snackbar({super.key});

      @override
      Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
              title: Text("Snack Bar"),
            ),
          body: Center(
            child: TextButton(
                onPressed: (){
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                       showCloseIcon: true,
                        content: Text("Success"),
                      behavior: SnackBarBehavior.floating,
                      action: SnackBarAction(
                          label: 'ok',
                          onPressed: (){}),

                    )
                  );
                },
                child: Text("Show SnackBar")),
          ),
        );
      }
    }