import 'package:flutter/material.dart';

class Ex5Cliprrect extends StatelessWidget {
  const Ex5Cliprrect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            // decoration: BoxDecoration(
            //   color: Colors.purpleAccent,
            //   image: DecorationImage(
            //       image:AssetImage('images/billie.jpg'),
            //     fit: BoxFit.fitWidth,
            //   )
            // ),
            width: 300,
            height: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('images/billie.jpg',
                fit: BoxFit.cover,

              ),
            ),
            // child: Text('Billie Ellish',style: TextStyle(
            //   color: Colors.white,
            //   //child:Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.indiamart.com%2Fproddetail%2F3d-wallpaper-20773721373.html%3Fsrsltid%3DAfmBOoogAx9mROVB_XvTLL9dgyP3PphUgRi6PEbOofanZPrtrn8AAmsa&psig=AOvVaw3WqPlrf52TZg-9hUMOw7RX&ust=1757748476429000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCIie7L7Z0o8DFQAAAAAdAAAAABAE')
            //
            // ),
            //   textAlign: TextAlign.center,),

          )),
    );
  }
}
