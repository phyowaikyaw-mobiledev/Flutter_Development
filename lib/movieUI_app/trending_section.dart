import 'package:flutter/material.dart';
import 'package:flutter_dev_collection/movieUI_app/widgets.dart';

import 'data.dart';

class TrendingSection extends StatefulWidget {
  const TrendingSection({super.key});

  @override
  State<TrendingSection> createState() => _TrendingSectionState();
}

class _TrendingSectionState extends State<TrendingSection> {

  late final PageController  _pageController;
  int currentIndex =1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
        initialPage: currentIndex,
        viewportFraction: 0.7
    );

  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TitleWidget(title: 'Trending',),
        SizedBox(
          height: 400,
          child: PageView.builder(
            onPageChanged: (value){
              setState(() {
                currentIndex= value;
              });
            },
            controller:_pageController,
            itemBuilder: (context,index)=> Container(
              margin: EdgeInsets.only(right: 25),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(trendings[index].imgUrl))
              ),

            ),
            itemCount: trendings.length,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(trendings.length,
                  (index)=>Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: index == currentIndex ? Colors.red : Colors.white,
                ),
              ))
          ,
        )
      ],
    );

  }
}
