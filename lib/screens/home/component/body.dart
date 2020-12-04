import 'package:flutter/material.dart';
import 'package:movie_ui/screens/home/component/category_list.dart';
import 'package:movie_ui/screens/home/component/genreList.dart';
import 'package:movie_ui/screens/home/component/movie_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> genres  = [
    "Action",
    "Crime",
    "Comedy",
    "Drama",
    "Horror",
    "Animation"
    ];
    return Column(
      children: [Category(), Genres(genres: genres,), MovieList()],
    );
  }
}
