    import 'package:flutter/material.dart';
import 'package:flutter_dev_collection/movieUI_app/data.dart';
import 'package:flutter_dev_collection/movieUI_app/movie_section.dart';
import 'package:flutter_dev_collection/movieUI_app/suggestion_section.dart';
import 'package:flutter_dev_collection/movieUI_app/trending_section.dart';


    class MoviePage extends StatelessWidget {
      const MoviePage({super.key});

      @override
      Widget build(BuildContext context) {
        const blackColor = Color(0xff202124);
        return Scaffold(
          backgroundColor: blackColor,
          drawer: Drawer(),
          appBar: AppBar(
            foregroundColor: Colors.white,
            backgroundColor: blackColor,
            centerTitle: true,
            title: Text("Savage Tv", style: TextStyle(
              fontSize: 18
            ),),
            actions: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.search),
              ),
              SizedBox(width: 16,)
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
               TrendingSection(),
                MovieSection(movies: movies, title: 'New Movies',),
                SuggestionSection(),
                MovieSection(movies: tvs, title: 'TV Shows',),
              ],
            ),
          ),


        );
      }
}


