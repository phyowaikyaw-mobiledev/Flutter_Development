      import 'package:flutter/material.dart';

    class Ex25Gridtilebar extends StatelessWidget {
      const Ex25Gridtilebar({super.key});
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("GridTile Bar"),
            centerTitle: true,
          ),
          body: Center(
            child: GridTile(
              header: GridTileBar(
                backgroundColor: Colors.deepPurple,
                leading: CircleAvatar(
                  child: Text("Dev"),
                ),
                title: Text("Phyo Wai Kyaw"),
                subtitle: Text(" Flutter - Mobile Developer "),
              ),
              footer: GridTileBar(
                backgroundColor: Colors.deepPurple,
                title: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border),
                    ),
                    Text("15")
                  ],
                ),
              ),
              
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset("images/dev.jpg",
                fit: BoxFit.cover,
                  height: 125,
               

                )),
            ),
          ),
        );
      }
    }
    
    