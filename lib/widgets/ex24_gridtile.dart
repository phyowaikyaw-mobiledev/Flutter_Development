    import 'package:flutter/material.dart';

  class Ex24Gridtile extends StatelessWidget {
    const Ex24Gridtile({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("GridTile"),
          centerTitle: true,
        ),
        body: GridView.builder(
          itemCount: 20,
            gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
            ) ,
            itemBuilder: (context , index) => 
                GridTile(
                  header: Icon(Icons.star,
                  color: Colors.white,
                  ),
                  footer: Container(
                    padding: EdgeInsets.symmetric(vertical: 4 , horizontal: 12),
                    color: Colors.white60,
                    child: Text("Billie $index",textAlign: TextAlign.center,style: TextStyle(color: Colors.black),
                    ),),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset("images/billie.jpg", fit: BoxFit.cover,)),
                  ),
                  

        ),
      );
    }
  }
