import 'package:flutter/material.dart';
import 'package:flutter_dev_collection/movieUI_app/widgets.dart';
import 'movie.dart';

class MovieSection extends StatelessWidget {
        const MovieSection({super.key,required this.movies, required this.title});

        final String title;
        final List <Movie> movies;


        @override
        Widget build(BuildContext context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TitleWidget(
                  title: title),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  itemCount: movies.length,
                    itemBuilder: (context,index) =>Column(
                      children: [
                        Container(
                          width: 120,
                          height: 140,
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                                image:AssetImage(movies[index].imgUrl) )
                          ),
                        ),
                        SizedBox(height: 10,),
                        //if new movie has overflow error use Sizedbox with width
                        Text(movies[index].name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                          color: Colors.white,
                            fontSize: 14
                        )

                          ,)
                      ],
                    ) ,scrollDirection: Axis.horizontal,),
              )
            ],
          );
        }
      }
