import 'package:flutter/material.dart';
import 'package:movie_ui/util/constants.dart';

class Genres extends StatefulWidget {
final List<String> genres ;

  const Genres({Key key, @required this.genres}) : super(key: key);
  @override
  _GenresState createState() => _GenresState();
}

class _GenresState extends State<Genres> {
  int selectedItem = 0;



  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        height: 36,
        child: ListView.builder(
          itemCount: widget.genres.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildGenreItem(widget.genres[index], index),
        ));
  }

  Container buildGenreItem(String genre, int index) {
    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding / 2),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
      height: 36,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: index == selectedItem ? Colors.black : Colors.black26)),
      child: GestureDetector(
        child: Text(
          genre,
          style: TextStyle(
              fontWeight:
                  index == selectedItem ? FontWeight.bold : FontWeight.normal),
        ),
        onTap: () {
          setState(() {
            selectedItem = index;
          });
        },
      ),
    );
  }
}
