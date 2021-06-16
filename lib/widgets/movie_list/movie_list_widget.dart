
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Movie{
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie({
    required this.imageName,
    required this.title,
    required this.time,
    required this.description
  });
}

class MovieListWidget extends StatelessWidget {

  final _movies = [
  Movie(
    imageName: 'images/movie.jpg',
    title: 'Смертельная битва',
  time: 'April 7, 2021',
  description: 'Описание №1',
  ),  Movie(
      imageName: 'images/movie.jpg',
      title: 'Смертельная битва 2',
      time: 'April 7, 2021',
      description: 'Описание №1',
    ),
    Movie(
      imageName: 'images/movie.jpg',
      title: 'Смертельная битва 3',
      time: 'April 7, 2021',
      description: 'Описание №1',
    ),  Movie(
      imageName: 'images/movie.jpg',
      title: 'Смертельная битва 4',
      time: 'April 7, 2021',
      description: 'Описание №1',
    ),
    Movie(
      imageName: 'images/movie.jpg',
      title: 'Смертельная битва 5',
      time: 'April 7, 2021',
      description: 'Описание №1',
    ),
    Movie(
      imageName: 'images/movie.jpg',
      title: 'Смертельная битва 6',
      time: 'April 7, 2021',
      description: 'Описание №1',
    ),
  ];

  MovieListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 70),
          itemCount: _movies.length,
            itemExtent: 163,
            itemBuilder: (BuildContext context, int index){
            final movie = _movies[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.8),
                        offset: Offset(0,4),
                        blurRadius: 8,
                      )
                    ]
                ),
                  clipBehavior: Clip.hardEdge,
                  child: Row(
                    children: [
                      Image(image: AssetImage(movie.imageName)),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Text(movie.title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,),
                            SizedBox(height: 5,),
                            Text(movie.time,
                              style: TextStyle(color: Colors.grey),),
                            SizedBox(height: 20,),
                            Text(movie.description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    onTap: (){
                      print(index);
                    },
                  ),
                )
              ],
            ),
          );
        }),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Поиск',
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border: OutlineInputBorder(),
            ),

          ),
        ),
      ],
    );
  }
}
