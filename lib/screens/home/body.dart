import 'package:flutter/material.dart';
import 'package:movie_ui/screens/home/component/category_list.dart';
import 'package:movie_ui/screens/home/component/genreList.dart';
import 'package:movie_ui/screens/home/component/movie_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Category(), Genres(), MovieList()],
    );
  }
}



