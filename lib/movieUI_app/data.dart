  import 'package:flutter_dev_collection/movieUI_app/movie.dart';

    String imageUrl(String name) => 'images/movies/$name';

    final trendings = [
      Movie(name: "Blue Beetle", imgUrl: imageUrl('bluebeetle.jpeg')),
      Movie(name: "Light House", imgUrl: imageUrl('lighthouse.jpg')),
      Movie(name: "Five Nights", imgUrl: imageUrl('fivenights.jpg')),
      Movie(name: "The Wild Robot", imgUrl: imageUrl('wildrobot.jpg')),
      Movie(name: "Avatar", imgUrl: imageUrl('avatar.jpg')),
    ];

    final movies =[
      Movie(name: "Alien", imgUrl: imageUrl('alien.jpg')),
      Movie(name: "Black Phone", imgUrl: imageUrl('blackphone.jpg')),
      Movie(name: "Captain Underware", imgUrl: imageUrl('captainunderware.jpg')),
      Movie(name: "Dead Pool", imgUrl: imageUrl('deadpool.jpg')),
      Movie(name: "Finding Dory", imgUrl: imageUrl('findingdory.jpg')),
    ];

  final tvs =[
    Movie(name: "Hell Boy", imgUrl: imageUrl('hellboy.jpg')),
    Movie(name: "Incredibles", imgUrl: imageUrl('incredibles.jpg')),
    Movie(name: "Iron Man", imgUrl: imageUrl('ironman.jpg')),
    Movie(name: "Rock Dog", imgUrl: imageUrl('rockdog.jpg')),
    Movie(name: "Venom", imgUrl: imageUrl('venom.jpg')),
  ];

  final suggestions =[
    Movie(name: "Spider Man No Way Home", imgUrl: imageUrl('spiderman.jpg')),
    Movie(name: "Sonic", imgUrl: imageUrl('sonic.jpg')),
    Movie(name: "Gemini Man", imgUrl: imageUrl('geminiman.jpeg')),
    Movie(name: "Bad Guys", imgUrl: imageUrl('badguys.jpeg')),
    Movie(name: "Wonder Woman", imgUrl: imageUrl('wonderwoman.jpg')),
  ];
