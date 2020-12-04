import 'dart:math';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:movie_ui/models/movie.dart';
import 'package:movie_ui/screens/home/component/movie_card.dart';
import 'package:movie_ui/util/constants.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  int initializePage = 1;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController =
        PageController(viewportFraction: 0.8, initialPage: initializePage);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: .66,
        child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                initializePage = value;
              });
            },
            physics: ClampingScrollPhysics(),
            controller: _pageController,
            itemCount: movies_en.length,
            itemBuilder: (context, index) => buildMovieCard(index)),
      ),
    );
  }

  Widget buildMovieCard(int index) => AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = 0;

          if (_pageController.position.hasContentDimensions) {
            value = index - _pageController.page;
            value = (value * 0.038).clamp(-1, 1);
          }
          return AnimatedOpacity(
              opacity: initializePage == index ? 1 : 0.4,
              duration: Duration(milliseconds: 250),
              child: Transform.rotate(
                  angle: math.pi * value, child: MovieCard(index: index)));
        },
      );
}
