    import 'package:flutter/material.dart';

    class HomeScreen extends StatelessWidget {
      const HomeScreen({super.key});
    
      @override
      Widget build(BuildContext context) {
        return Container(
          color: Colors.yellowAccent,
          width: double.infinity,
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Home Screen')
            ],
          ),
        );
      }
    }
    