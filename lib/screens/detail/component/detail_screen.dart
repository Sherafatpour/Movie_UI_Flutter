import 'package:flutter/material.dart';
import 'package:movie_ui/models/movie.dart';
import 'package:movie_ui/screens/detail/component/body.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;

  const DetailScreen({Key key,@required this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body(movie: movie),);
  }
}
